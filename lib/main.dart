import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:unithub/bloc_observer.dart';
import 'package:unithub/core/app/unithub_app.dart';
import 'package:unithub/core/di/setup_injections.dart';
import 'package:unithub/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = SimpleBlocObserver();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await setUpInjections();
  
  runApp(const UnithubApp());
}
