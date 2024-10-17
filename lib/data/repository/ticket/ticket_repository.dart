
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:unithub/data/dto/ticket/ticket_dto.dart';
import 'package:uuid/uuid.dart';

class TicketRepository {
  final FirebaseFirestore firestore;
  final FirebaseAuth auth;

  TicketRepository({required this.firestore, required this.auth});

  String generateRandomCode(int length) {
    const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    Random random = Random();
    return String.fromCharCodes(
      Iterable.generate(
        length, (_) => characters.codeUnitAt(random.nextInt(characters.length),
      ),
    ),
  );
}

  Future<void> createTicket(String uid, String eventId, DateTime expireTime) async {
    final secret = generateRandomCode(6);

    final code = const Uuid().v4();

    final ticketCollection = firestore.collection("tickets");

    final TicketDto ticket = TicketDto(
      uid: uid,
      eventId: eventId,
      code: code,
      secret: secret,
      expireTime: expireTime,
    );

    await ticketCollection.add(ticket.toJson());
  }

  Future<TicketDto?> getTicketByUidAndEventId(String eventId) async {

    final uid = auth.currentUser!.uid;

    final ticketCollection = firestore.collection("tickets");

    final querySnapshot = await ticketCollection
        .where('uid', isEqualTo: uid)
        .where('event_id', isEqualTo: eventId)
        .get();

    if (querySnapshot.docs.isNotEmpty) {
      final ticketData = querySnapshot.docs.first.data();
      return TicketDto.fromJson(ticketData);
    }

    return null;
  }

  Future<void> deleteTicket(String uid, String eventId) async {
    final ticketCollection = firestore.collection("tickets");

    final querySnapshot = await ticketCollection
        .where('uid', isEqualTo: uid)
        .where('event_id', isEqualTo: eventId)
        .get();

    for (var doc in querySnapshot.docs) {
      await ticketCollection.doc(doc.id).delete();
    }
  }
}