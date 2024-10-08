import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:unithub/core/routes/app_routes.dart';
import 'package:unithub/page/auth/login/login_page.dart';
import 'package:unithub/page/auth/register/register_page.dart';
import 'package:unithub/page/create_event/create_event_page.dart';
import 'package:unithub/page/navigation/bottom_nav_bar.dart';

class UnithubApp extends StatelessWidget {
  const UnithubApp({super.key});

  @override
  Widget build(BuildContext context) {

    final User? user = FirebaseAuth.instance.currentUser;
    
    return MaterialApp(
      title: 'UnitHub',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: user == null
        ? AppRoutes.login
        : AppRoutes.navBar,
      routes: {
        AppRoutes.login: (_) => const LoginPage(),
        AppRoutes.register: (_) => const RegisterPage(),
        AppRoutes.navBar: (_) => const BottomNavBar(),
        AppRoutes.createEvent: (_) => const CreateEventPage(),
      },
    );
  }
}