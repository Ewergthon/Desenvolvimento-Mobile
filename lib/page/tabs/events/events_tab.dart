import 'package:flutter/material.dart';
import 'package:unithub/core/extensions/navigator_extension.dart';
import 'package:unithub/core/routes/app_routes.dart';

class EventsTab extends StatefulWidget {

  const EventsTab({ super.key });

  @override
  State<EventsTab> createState() => _EventsTabState();
}

class _EventsTabState extends State<EventsTab> {

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('EVENTS'),),
           body: Container(),
           floatingActionButton: FloatingActionButton.extended(
            onPressed: () => context.pushNamed(AppRoutes.createEvent),
            backgroundColor: const Color(0xFF66E8B6),
            icon: const Icon(Icons.add, size: 50),
            label: const Text("Criar Evento", style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700)),
            isExtended: true,
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          ),
       );
  }
}