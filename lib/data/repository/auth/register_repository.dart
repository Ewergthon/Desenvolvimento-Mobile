
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:unithub/data/dto/user/user_dto.dart';
import 'package:unithub/services/shared_preferences_service.dart';

class RegisterRepository {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;
  final SharedPreferencesService sharedService;

  RegisterRepository({required this.firestore, required this.auth, required this.sharedService});

  Future<void> register(String name, String email, String password) async {
    final register = await auth.createUserWithEmailAndPassword(email: email, password: password);

    final user = UserDto(
      id: register.user!.uid, 
      name: name, 
      email: email,
    );

    await sharedService.saveUser(user);

    await firestore.collection("users").doc(user.id).set(user.toJson());
  }
}