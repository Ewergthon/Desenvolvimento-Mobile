import 'package:cached_network_image/cached_network_image.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pretty_qr_code/pretty_qr_code.dart';
import 'package:unithub/core/di/setup_injections.dart';
import 'package:unithub/core/extensions/date_time_extension.dart';
import 'package:unithub/core/extensions/navigator_extension.dart';
import 'package:unithub/core/extensions/screen_size_extension.dart';
import 'package:unithub/core/extensions/sizedbox_extension.dart';
import 'package:unithub/core/extensions/widget_position_extension.dart';
import 'package:unithub/page/tabs/bookings/cubit/bookings_cubit.dart';
import 'package:unithub/page/tabs/bookings/cubit/bookings_state.dart';
import 'package:unithub/page/tabs/home/cubit/home_cubit.dart';
import 'package:unithub/page/tabs/home/cubit/ticket/ticket_cubit.dart';
import 'package:unithub/page/tabs/home/cubit/ticket/ticket_state.dart';

class BookingsTab extends StatefulWidget {
  const BookingsTab({super.key});

  @override
  State<BookingsTab> createState() => _BookingsTabState();
}

class _BookingsTabState extends State<BookingsTab> {
  final cubit = i<BookingsCubit>();
  final ticketCubit = i<TicketCubit>();
  final eventCubit = i<HomeCubit>();

  @override
  void initState() {
    cubit.getUserBookedEvents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 185,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.zero,
              centerTitle: true,
              title: Image.asset(
                "assets/bookings_header.png",
              ),
            ),
          ),
          SliverFillRemaining(
            child: BlocBuilder<BookingsCubit, BookingsState>(
              bloc: cubit,
              builder: (context, state) {
                return state.maybeWhen(
                  success: (events) => RefreshIndicator(
                    color: Colors.blue,
                    displacement: 10,
                    onRefresh: () async => cubit.getUserBookedEvents(),
                    child: ListView.builder(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      itemCount: events!.length,
                      itemBuilder: (context, index) {
                        return Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                            side: const BorderSide(color: Colors.black26),
                          ),
                          color: const Color.fromARGB(255, 255, 243, 237),
                          margin: const EdgeInsets.symmetric(vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (events[index].mediaEvent.isNotEmpty) ...[
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(14),
                                  child: CachedNetworkImage(
                                    imageUrl: events[index].mediaEvent,
                                    placeholder: (context, url) =>
                                        const CircularProgressIndicator()
                                            .centralized(),
                                    imageBuilder: (context, imageProvider) =>
                                        Image(
                                      image: imageProvider,
                                      height: 148,
                                      width: context.getWidth(),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                              10.height(),
                              Padding(
                                padding: const EdgeInsets.all(12),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      events[index].eventName,
                                      style: const TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w900),
                                    ),
                                    10.height(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            const Icon(
                                                Icons.location_on_outlined),
                                            Text(
                                              events[index].localEvent,
                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              events[index]
                                                  .eventDate!
                                                  .brazilianDateTime,
                                              style: const TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.w300),
                                            ),
                                            5.width(),
                                            const Icon(Icons.calendar_month),
                                          ],
                                        ),
                                      ],
                                    ),
                                    20.height(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xFF005EAB),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                            ),
                                          ),
                                          onPressed: () => showDialog(
                                            context: context,
                                            builder: (context) {
                                              ticketCubit.getMyTicket(events[index].id);
                                              return Dialog(
                                              backgroundColor:
                                                  const Color(0xFF69645A),
                                              child: SingleChildScrollView(
                                                child: Padding(
                                                  padding:
                                                      const EdgeInsets.all(8),
                                                  child: BlocBuilder<TicketCubit, TicketState>(
                                                    bloc: ticketCubit,
                                                    builder: (context, state) {
                                                      return state.maybeWhen(
                                                        ticketLoaded: (ticket) => Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: [
                                                          SvgPicture.asset(
                                                              "assets/unithub_yellow.svg",
                                                              height: 41,
                                                              width: 43),
                                                          20.height(),
                                                          Container(
                                                            color: Colors.white,
                                                            height: 189,
                                                            width: 189,
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8),
                                                            child: PrettyQrView
                                                                .data(
                                                                    data: ticket!.code),
                                                          ),
                                                          20.height(),
                                                          Container(
                                                            color: Colors.white,
                                                            height: 43,
                                                            width: 189,
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8),
                                                            child: SelectableText("SENHA: ${ticket!.secret}")
                                                                .centralized(),
                                                          ),
                                                          20.height(),
                                                          ElevatedButton(
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              padding:
                                                                  const EdgeInsets
                                                                      .all(12),
                                                              elevation: 4,
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xFFFDBC14),
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            11),
                                                              ),
                                                            ),
                                                            onPressed: () => context.pop(),
                                                            child: const Text(
                                                              "Confirmar",
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w400,
                                                                  fontSize: 16),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                        error: (exception, stackTrace, shouldPopPage) => Text(exception.toString()).centralized(),
                                                        loading: () => const CircularProgressIndicator().centralized(),
                                                        orElse: () => const SizedBox.shrink(),
                                                      );
                                                    },
                                                  ),
                                                ),
                                              ),
                                            );
                                            },
                                          ),
                                          child: const Text(
                                            "Meu Ingresso",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor:
                                                const Color(0xFF005EAB),
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(3),
                                            ),
                                          ),
                                          onPressed: () async {
                                            final uid = FirebaseAuth.instance.currentUser!.uid;
                                            ticketCubit.deleteTicket(uid, events[index].id);
                                            eventCubit.removeUserFromEvent(events[index].id).then((_) {
                                              cubit.getUserBookedEvents();
                                            });
                                          },
                                          child: const Text(
                                            "Cancelar",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w400,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  error: (exception, stackTrace, shouldPopPage) =>
                      Text(exception.toString()).centralized(),
                  loading: () =>
                      const CircularProgressIndicator().centralized(),
                  orElse: () => const SizedBox.shrink(),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
