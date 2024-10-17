import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:path/path.dart';
import 'package:unithub/data/dto/event/event_dto.dart';
import 'package:unithub/data/dto/user/user_dto.dart';

class EventRepository {
  final FirebaseFirestore firestore;
  final FirebaseStorage storage;
  final FirebaseAuth auth;

  EventRepository({required this.firestore, required this.storage, required this.auth});

  Future<List<EventDto>> getEvents() async {
    final eventCollection = firestore.collection("events");
    
    final eventMap = await eventCollection.orderBy('created_at').get();

    List<EventDto> events = eventMap.docs.map((doc) {
      return EventDto.fromJson(doc.data());
    }).toList();

    return events;
  }

  Future<void> createEvent(EventDto event, File? imageFile) async {
    final eventCollection = firestore.collection("events");

    final ref = eventCollection.doc();

    String? imageUrl;
    if (imageFile != null) {
      imageUrl = await uploadImageAndGetUrl(imageFile);
    }

    event = event.copyWith(id: ref.id, mediaEvent: imageUrl ?? '', createdAt: DateTime.now());

    await ref.set(event.toJson());
  }

  Future<String> uploadImageAndGetUrl(File imageFile) async {
    String fileName = basename(imageFile.path);

    Reference ref = storage.ref().child('images/$fileName');

    UploadTask uploadTask = ref.putFile(imageFile);

    TaskSnapshot taskSnapshot = await uploadTask.whenComplete(() => {});

    String imageUrl = await taskSnapshot.ref.getDownloadURL();

    return imageUrl;
  }

  Future<void> bookEvent(String eventId) async {
    final uid = auth.currentUser!.uid;

    final snapshot = await firestore.collection("users").doc(uid).get();

    if (snapshot.data() != null) {

      final UserDto user = UserDto.fromJson(snapshot.data()!);
      
      final eventCollection = firestore.collection("events").doc(eventId);

      final snapshotEvent = await eventCollection.get();

      if(snapshotEvent.exists) {
        await eventCollection.update({
          'participants': FieldValue.arrayUnion([user.toJson()]),
        });
      }
    }
  }

  Future<void> removeUserFromEvent(String eventId) async {
    final uid = auth.currentUser!.uid;

    final eventCollection = firestore.collection("events").doc(eventId);

    final eventSnapshot = await eventCollection.get();
    if (eventSnapshot.exists) {
      final eventData = eventSnapshot.data();
      final participants = eventData?['participants'] as List<dynamic>?;

      if (participants != null) {
        final userToRemove = participants.firstWhere(
          (participant) => participant['id'] == uid,
          orElse: () => null,
        );

        if (userToRemove != null) {
          await eventCollection.update({
            'participants': FieldValue.arrayRemove([userToRemove]),
          });
        }
      }
    }
  }

  Future<bool> isUserAlreadyBooked(String eventId) async {
    final uid = auth.currentUser!.uid;

    final eventCollection = firestore.collection("events").doc(eventId);
    final snapshotEvent = await eventCollection.get();

    if (snapshotEvent.exists) {
      EventDto event = EventDto.fromJson(snapshotEvent.data()!);

      final bool alreadyBooked = event.participants.any((participant) => participant.id == uid);

      return alreadyBooked;
    }

    return false;
  }

}
