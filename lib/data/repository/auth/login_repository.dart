import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:unithub/data/dto/user/user_dto.dart';
import 'package:unithub/services/shared_preferences_service.dart';

class LoginRepository {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;
  final SharedPreferencesService sharedService;

  LoginRepository({required this.firestore, required this.auth, required this.sharedService});

  Future<void> login({required String email, required String password}) async {
    await auth.signInWithEmailAndPassword(email: email, password: password)
      .then((uCredential) async{
        final uId = uCredential.user!.uid;

        final doc = await firestore.collection("users").doc(uId).get();

        final data = doc.data();

        if(data != null) {

          final user = UserDto.fromJson(data);

          await sharedService.saveUser(user);
        }
    }).catchError((err) {
      throw err;
    });
  }
}
