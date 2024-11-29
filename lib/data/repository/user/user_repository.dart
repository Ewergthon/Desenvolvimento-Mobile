import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:unithub/data/dto/user/user_dto.dart';

class UserRepository {
  final FirebaseAuth auth;
  final FirebaseFirestore firestore;
  UserRepository(this.auth, this.firestore);

  Future<UserDto> getUser() async {
    final userId = auth.currentUser!.uid;

    final data = await firestore.collection('users').doc(userId).get();

    return UserDto.fromJson(data.data()!);
  }

  Future<String> uploadImage(String folder, File image) async {
    final userId = auth.currentUser!.uid;

    final Reference referenceRoot = FirebaseStorage.instance.ref();
    final Reference referenceImageMotor = referenceRoot.child(folder);
    final Reference referenceImageMotorUpload = referenceImageMotor.child(userId);

    await referenceImageMotorUpload.putFile(image);
    String urlDownload = await referenceImageMotorUpload.getDownloadURL();

    return urlDownload;
  }

  Future<void> updateUser({
    String? name,
    String? profileImage,
  }) async {
    final userId = auth.currentUser!.uid;

    await firestore.collection("users").doc(userId).update({
      if (name != null) "name": name,
      if (profileImage != null) "profile_image": profileImage!,
    });
  }

  Future<void> signOut() async {
    await auth.signOut();
  }

  Future<void> deleteUser() async {
    final userId = auth.currentUser!.uid;

    await auth.currentUser!.delete();
    firestore.collection('users').doc(userId).delete();
  }
}