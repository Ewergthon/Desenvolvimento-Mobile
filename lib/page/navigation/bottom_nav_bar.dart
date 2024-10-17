import 'package:flutter/material.dart';
import 'package:unithub/page/tabs/bookings/bookings_tab.dart';
import 'package:unithub/page/tabs/events/events_tab.dart';
import 'package:unithub/page/tabs/home/home_tab.dart';
import 'package:unithub/page/tabs/messages/messages_tab.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 0;

  final List<Widget> _tabs = [
    const HomeTab(),
    const EventsTab(),
    const BookingsTab(),
    const MessagesTab(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
        child: Container(
          decoration: const BoxDecoration(
            border: Border.fromBorderSide(BorderSide(color: Colors.black26, width: 2)),
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: BottomNavigationBar(
            backgroundColor: const Color(0xFF005EAB),
            elevation: 10,
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.black,
            showUnselectedLabels: true,
            onTap: _onTabTapped,
            items: [
              _buildBottomNavigationBarItem(0, "assets/home.png", 'HOME'),
              _buildBottomNavigationBarItem(1, "assets/events.png", 'EVENTOS'),
              _buildBottomNavigationBarItem(2, "assets/bookings.png", 'RESERVAS'),
              _buildBottomNavigationBarItem(3, "assets/messages.png", 'MENSAGENS'),
            ],
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem _buildBottomNavigationBarItem(int index, String image, String label) {
    return BottomNavigationBarItem(
      icon: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                height: 8,
                width: _currentIndex == index ? 53 : 0,
                decoration: BoxDecoration(
                  color: _currentIndex == index ? const Color(0xFF74E8E8) : Colors.transparent,
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              Image.asset(
                image,
                height: 45,
                width: 42,
              ),
            ],
          ),
        ],
      ),
      label: label,
    );
  }
}
