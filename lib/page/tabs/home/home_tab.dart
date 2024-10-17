import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unithub/core/di/setup_injections.dart';
import 'package:unithub/core/extensions/screen_size_extension.dart';
import 'package:unithub/core/extensions/sizedbox_extension.dart';
import 'package:unithub/core/extensions/widget_position_extension.dart';
import 'package:unithub/gen/assets.gen.dart';
import 'package:unithub/page/tabs/home/cubit/home_cubit.dart';
import 'package:unithub/page/tabs/home/cubit/home_state.dart';
import 'package:unithub/page/tabs/home/widgets/event_dialog.dart';
import 'package:unithub/page/tabs/home/widgets/home_search_bar.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final cubit = i<HomeCubit>();

  @override
  void initState() {
    cubit.getEvents();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/profile.jpg"),
            ),
          ),
        ],
      ),
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
                          padding: const EdgeInsets.symmetric( horizontal: 10, vertical: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if(events[index].mediaEvent.isNotEmpty) ... [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(14),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: CachedNetworkImage(
                                      imageUrl: events[index].mediaEvent,
                                      placeholder: (context, url) => const CircularProgressIndicator().centralized(),
                                      imageBuilder: (context, imageProvider) =>
                                        ClipRRect(
                                          borderRadius: BorderRadius.circular(14),
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
                                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
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
                                        color: Color.fromRGBO(0, 122, 255, 1),
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
                  error: (exception, stackTrace, shouldPopPage) => Text(exception.toString()).centralized(),
                  loading: () => const CircularProgressIndicator().centralized(),
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
