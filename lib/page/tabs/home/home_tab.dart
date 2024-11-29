import 'package:balloon_widget/balloon_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unithub/core/di/setup_injections.dart';
import 'package:unithub/core/extensions/navigator_extension.dart';
import 'package:unithub/core/extensions/screen_size_extension.dart';
import 'package:unithub/core/extensions/sizedbox_extension.dart';
import 'package:unithub/core/extensions/widget_position_extension.dart';
import 'package:unithub/core/routes/app_routes.dart';
import 'package:unithub/gen/assets.gen.dart';
import 'package:unithub/page/tabs/home/cubit/home_cubit.dart';
import 'package:unithub/page/tabs/home/cubit/home_state.dart';
import 'package:unithub/page/tabs/home/cubit/user/user_cubit.dart';
import 'package:unithub/page/tabs/home/cubit/user/user_state.dart';
import 'package:unithub/page/tabs/home/widgets/event_dialog.dart';
import 'package:unithub/page/tabs/home/widgets/home_search_bar.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final cubit = i<HomeCubit>();
  final userCubit = i<UserCubit>();

  @override
  void initState() {
    cubit.getEvents();
    userCubit.getUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<UserCubit, UserState>(
      bloc: userCubit,
      listener: (context, state) {
        state.maybeWhen(
          orElse: (){},
          successSignOut: () => context.pushNamedAndRemoveUntil(AppRoutes.login),
        );
      },
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              SvgPicture.asset(Assets.logoBlue),
              20.width(),
              const Text(
                'Home',
                style: TextStyle(fontSize: 34, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: BlocBuilder<UserCubit, UserState>(
                bloc: userCubit,
                builder: (context, state) {
                  return state.maybeWhen(
                    orElse: () => const SizedBox.shrink(),
                    loading: () => const CircularProgressIndicator(),
                    success: (user) => InkWell(
                      onTap: () {
                        SmartDialog.showAttach(
                          targetContext: context,
                          alignment: Alignment.bottomRight,
                          animationType: SmartAnimationType.scale,
                          maskColor: Colors.transparent,
                          builder: (_) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: IntrinsicWidth(
                                child: Balloon(
                                  nipPosition: BalloonNipPosition.topRight,
                                  elevation: 10,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        InkWell(
                                          onTap: () {},
                                          child: Row(
                                            children: [
                                              const Icon(
                                                  Icons.person_outline_outlined,
                                                  size: 20),
                                              5.width(),
                                              const Text(
                                                "Perfil",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        10.height(),
                                        InkWell(
                                          onTap: () {},
                                          child: Row(
                                            children: [
                                              const Icon(
                                                  Icons.settings_outlined,
                                                  size: 20),
                                              5.width(),
                                              const Text(
                                                "Configurações",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        10.height(),
                                        InkWell(
                                          onTap: () {},
                                          child: Row(
                                            children: [
                                              const Icon(Icons.layers_outlined,
                                                  size: 20),
                                              5.width(),
                                              const Text(
                                                "Ajuda",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                        10.height(),
                                        InkWell(
                                          onTap: () {
                                            SmartDialog.dismiss();
                                            showDialog(
                                              context: context,
                                              builder: (context) {
                                                return AlertDialog.adaptive(
                                                  title: const Text(
                                                    "ATENÇÃO",
                                                    style: TextStyle(
                                                        fontSize: 22,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  content: const Text(
                                                    "Tem certeza de que deseja sair da sua conta?",
                                                    style: TextStyle(
                                                        fontSize: 16,
                                                        fontWeight:
                                                            FontWeight.w400),
                                                  ),
                                                  actions: [
                                                    TextButton(
                                                      onPressed: () =>
                                                          context.pop(),
                                                      child: const Text(
                                                        "Cancelar",
                                                        style: TextStyle(
                                                            color: Colors.red),
                                                      ),
                                                    ),
                                                    TextButton(
                                                      onPressed: () =>
                                                          userCubit.signOut(),
                                                      child: const Text(
                                                        "Confirmar",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black),
                                                      ),
                                                    ),
                                                  ],
                                                );
                                              },
                                            );
                                          },
                                          child: Row(
                                            children: [
                                              const Icon(
                                                  Icons.power_settings_new,
                                                  size: 20),
                                              5.width(),
                                              const Text(
                                                "Sair",
                                                style: TextStyle(
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey[300],
                        backgroundImage: NetworkImage(user.profileImage),
                        child: const Icon(Icons.person, size: 30),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        // TODO: REFATORAR CÓDIGO DE PROFILE
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeSearchBar(),
            const Divider(),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                "Esta semana",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ),
            Expanded(
              child: BlocBuilder<HomeCubit, HomeState>(
                bloc: cubit,
                builder: (context, state) {
                  return state.maybeWhen(
                    success: (events) => RefreshIndicator(
                      color: Colors.blue,
                      displacement: 10,
                      onRefresh: () async => cubit.getEvents(),
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
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (events[index].mediaEvent.isNotEmpty) ...[
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(14),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: CachedNetworkImage(
                                          imageUrl: events[index].mediaEvent,
                                          placeholder: (context, url) =>
                                              const CircularProgressIndicator()
                                                  .centralized(),
                                          imageBuilder:
                                              (context, imageProvider) =>
                                                  ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(14),
                                            child: Image(
                                              image: imageProvider,
                                              height: 148,
                                              width: context.getWidth(),
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                  const SizedBox(height: 10),
                                  Text(
                                    events[index].eventName,
                                    style: const TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.w400),
                                  ),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: SizedBox(
                                      height: 35,
                                      child: TextButton(
                                        style: ElevatedButton.styleFrom(
                                          padding: const EdgeInsets.all(5),
                                        ),
                                        onPressed: () => eventDialog(
                                          context,
                                          events[index],
                                        ),
                                        child: const Text(
                                          "Ver Detalhes",
                                          style: TextStyle(
                                            color:
                                                Color.fromRGBO(0, 122, 255, 1),
                                            fontSize: 15,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
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
      ),
    );
  }
}
