import 'package:flutter/material.dart';

class BookingsTab extends StatefulWidget {

  const BookingsTab({ super.key });

  @override
  State<BookingsTab> createState() => _BookingsTabState();
}

class _BookingsTabState extends State<BookingsTab> {

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('BOOKINGS'),),
           body: Container(),
       );
  }
}