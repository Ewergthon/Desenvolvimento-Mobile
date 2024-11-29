import 'package:flutter/material.dart';
import 'package:unithub/core/extensions/navigator_extension.dart';
import 'package:unithub/core/extensions/sizedbox_extension.dart';
import 'package:unithub/core/routes/app_routes.dart';
import 'package:unithub/data/dto/category/category.dart';
import 'package:unithub/page/components/body_with_header.dart';
import 'package:unithub/page/event_filtered/event_filtred_page.dart';

class EventsTab extends StatefulWidget {

  const EventsTab({ super.key });

  @override
  State<EventsTab> createState() => _EventsTabState();
}

class _EventsTabState extends State<EventsTab> {

  final categories = [
    Category(path: "assets/direito.png", category: "Direito"),
    Category(path: "assets/tecnologia.png", category: "Tecnologia"),
  ];

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           body: BodyWithHeader(
            child: ListView.builder(
              padding: const EdgeInsets.only(right: 20, left: 20, bottom: 40),
              itemCount: categories.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () => context.push(
                  EventFilteredPage(category: categories[index], categories: categories)),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: const BorderSide(color: Colors.black26),
                  ),
                  color: const Color.fromARGB(255, 255, 243, 237),
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Image.asset(categories[index].path, fit: BoxFit.cover),
                          20.height(),
                          Text(
                            categories[index].category,
                            style: const TextStyle(fontSize: 30, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
           floatingActionButton: FloatingActionButton.extended(
            onPressed: () => context.pushNamed(AppRoutes.createEvent),
            backgroundColor: const Color(0xFF66E8B6),
            icon: const Icon(Icons.add, size: 25),
            label: const Text("Criar Evento", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700)),
            isExtended: true,
            elevation: 6,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
       );
  }
}