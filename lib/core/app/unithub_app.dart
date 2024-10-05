import 'package:flutter/material.dart';
import 'package:unithub/core/routes/app_routes.dart';
import 'package:unithub/page/auth/login/login_page.dart';
import 'package:unithub/page/auth/register/register_page.dart';
import 'package:unithub/page/navigation/bottom_nav_bar.dart';

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
      initialRoute: AppRoutes.login,
      routes: {
        AppRoutes.login: (_) => const LoginPage(),
        AppRoutes.register: (_) => const RegisterPage(),
        AppRoutes.navBar: (_) => const BottomNavBar(),
      },
    );
  }
}