import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:unithub/core/extensions/sizedbox_extension.dart';
import 'package:unithub/gen/assets.gen.dart';
import 'package:unithub/page/tabs/home/widgets/home_search_bar.dart';

class HomeTab extends StatefulWidget {
  const HomeTab({super.key});

  @override
  State<HomeTab> createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> {
  final List<Map<String, String>> events = [
    {"image": "assets/event.png", "title": "70% OFF - Table Tennis contest.\nBook Fast."},
    {"image": "assets/event.png", "title": "70% OFF - Table Tennis contest.\nBook Fast."},
    {"image": "assets/event.png", "title": "70% OFF - Table Tennis contest.\nBook Fast."},
    {"image": "assets/event.png", "title": "70% OFF - Table Tennis contest.\nBook Fast."},
    {"image": "assets/event.png", "title": "70% OFF - Table Tennis contest.\nBook Fast."},
    {"image": "assets/event.png", "title": "70% OFF - Table Tennis contest.\nBook Fast."},
  ];

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
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: events.length,
              itemBuilder: (context, index) {
                return Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(color: Colors.black26),
                  ),
                  color: const Color(0xFFFFF6F6),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset( events[index]["image"]!),
                        const SizedBox(height: 10),
                        Text(events[index]["title"] ?? "", style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w400)),
                        Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                            height: 35,
                            child: TextButton(
                              style: ElevatedButton.styleFrom(
                                padding: const EdgeInsets.all(5),
                              ),
                              onPressed: (){}, 
                              child: const Text(
                                "Read more", 
                                style: TextStyle(color: Colors.blue, fontSize: 15, fontWeight: FontWeight.w300),
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
        ],
      ),
    );
  }
}
