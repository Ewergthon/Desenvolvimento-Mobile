import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'package:unithub/data/dto/event/event_dto.dart';
import 'package:uuid/uuid.dart';

class EventRepository {
  final FirebaseFirestore firestore;
  final FirebaseStorage storage;

  EventRepository({required this.firestore, required this.storage});

  Future<void> createEvent(EventDto event, File? imageFile) async {
    final eventCollection = firestore.collection("events");

    String? imageUrl;
    if (imageFile != null) {
      imageUrl = await uploadImageAndGetUrl(imageFile);
    }

    event = event.copyWith(id: const Uuid().v4());

    event = event.copyWith(mediaEvent: imageUrl ?? '');

    await eventCollection.add(event.toJson());
  }

  Future<String> uploadImageAndGetUrl(File imageFile) async {
    String fileName = basename(imageFile.path);

    Reference ref = storage.ref().child('images/$fileName');

    UploadTask uploadTask = ref.putFile(imageFile);

    TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() => {});

    String imageUrl = await taskSnapshot.ref.getDownloadURL();

    return imageUrl;
  }
}
