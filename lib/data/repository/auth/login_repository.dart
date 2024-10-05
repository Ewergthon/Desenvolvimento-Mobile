import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:unithub/services/shared_preferences_service.dart';

class LoginRepository {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;
  final SharedPreferencesService sharedService;

  LoginRepository({required this.firestore, required this.auth, required this.sharedService});

  Future<void> login({required String email, required String password}) async {
    await auth.signInWithEmailAndPassword(email: email, password: password);
  }
}
