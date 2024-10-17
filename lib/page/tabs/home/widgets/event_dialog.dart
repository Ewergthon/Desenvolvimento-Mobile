import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unithub/core/di/setup_injections.dart';
import 'package:unithub/core/extensions/date_time_extension.dart';
import 'package:unithub/core/extensions/navigator_extension.dart';
import 'package:unithub/core/extensions/screen_size_extension.dart';
import 'package:unithub/core/extensions/sizedbox_extension.dart';
import 'package:unithub/core/extensions/widget_position_extension.dart';
import 'package:unithub/data/dto/event/event_dto.dart';
import 'package:unithub/page/components/error_toast.dart';
import 'package:unithub/page/components/success_toast.dart';
import 'package:unithub/page/tabs/home/cubit/home_cubit.dart';
import 'package:unithub/page/tabs/home/cubit/ticket/ticket_cubit.dart';
import 'package:unithub/page/tabs/home/cubit/ticket/ticket_state.dart';

void eventDialog(BuildContext context, EventDto event) {
  final cubit = i<TicketCubit>();

  final homeCubit = i<HomeCubit>();

  final uid = FirebaseAuth.instance.currentUser!.uid;

  showDialog(
    context: context,
    builder: (context) {
      cubit.getIsUserAlreadyBooked(event.id);
      
      return Dialog(
        child: BlocConsumer<TicketCubit, TicketState>(
          bloc: cubit,
          listener: (context, state) {
            state.maybeWhen(
              orElse: (){},
              initial: () => cubit.getIsUserAlreadyBooked(event.id),
              deleted: () => showToastSuccess(context, "Reserva cancelada com sucesso!"),
              success: () => showToastSuccess(context, "Reserva efetuada com sucesso!"),
              error: (e, s, p) => showToastError(e, context),
            );
          },
          builder: (context, state) {
            return SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (event.mediaEvent.isNotEmpty) ...[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(14),
                        child: CachedNetworkImage(
                          imageUrl: event.mediaEvent,
                          placeholder: (context, url) =>
                              const CircularProgressIndicator().centralized(),
                          imageBuilder: (context, imageProvider) => Image(
                            image: imageProvider,
                            height: 148,
                            width: context.getWidth(),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                    20.height(),
                    Text(
                      event.eventName,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w400),
                    ),
                    20.height(),
                    Text(
                      event.description,
                      style: const TextStyle(
                          fontSize: 15, fontWeight: FontWeight.w300),
                    ),
                    20.height(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "De: ${event.eventStartTime!.brHour}",
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Até: ${event.eventEndTime!.brHour}",
                              style: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                          child: VerticalDivider(
                              width: 2, thickness: 2, color: Colors.black),
                        ),
                        Text(
                          "Local: ${event.localEvent}",
                          style: const TextStyle(
                              fontSize: 12, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    30.height(),
                    if(cubit.isUserAlreadyBooked) ... [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 240, 38, 7),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                        ),
                        onPressed: state is LoadingTicketState
                        ? null
                        : () {
                          homeCubit.removeUserFromEvent(event.id);
                          cubit.deleteTicket(uid, event.id);
                        },
                        child: state is LoadingTicketState
                        ? const CircularProgressIndicator().centralized()
                        : const Text(
                          "Cancelar Reserva",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ).centralized(),
                      ),
                    ] else ... [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromRGBO(253, 188, 20, 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(3)),
                        ),
                        onPressed: state is LoadingTicketState 
                        ? null 
                        : () {
                          homeCubit.bookEvent(event.id);
                          cubit.createTicket(uid, event.id, event.eventEndTime!);
                        },
                        child: state is LoadingTicketState
                        ? const CircularProgressIndicator().centralized()
                        : const Text(
                          "Reservar",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ).centralized(),
                      ),
                    ],
                    20.height(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(74, 74, 74, 1),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3)),
                      ),
                      onPressed: () => context.pop(),
                      child: const Text(
                        "Fechar",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ).centralized(),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    },
  );
}
