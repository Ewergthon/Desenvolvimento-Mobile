import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:unithub/core/app/unithub_app.dart';
import 'package:unithub/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  runApp(const UnithubApp());
}
