import 'package:flutter/material.dart';
import 'package:unithub/screens/navigation/bottom_nav_bar.dart';

class UnithubApp extends StatelessWidget {
  const UnithubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UnitHub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomNavBar(),
    );
  }
}