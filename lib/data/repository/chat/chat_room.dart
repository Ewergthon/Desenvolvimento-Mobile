
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ChatRoom {

  final FirebaseFirestore firestore;
  final FirebaseAuth auth;

  ChatRoom({required this.firestore, required this.auth});

  Future<String> getOrCreateChatRoom(String user1Id, String user2Id) async {
    final List<String> orderedIds = [user1Id, user2Id]..sort();
    final chatRoomId = "${orderedIds[0]}_${orderedIds[1]}";

    final chatRoomRef = FirebaseFirestore.instance.collection('chats').doc(chatRoomId);
    final doc = await chatRoomRef.get();

    if (!doc.exists) {
      await chatRoomRef.set({
        'user1': orderedIds[0],
        'user2': orderedIds[1],
        'createdAt': FieldValue.serverTimestamp(),
      });
    }

    return chatRoomId;
  }

  Future<void> sendMessage(String chatRoomId, String message) async {
    final messagesCollection = firestore
        .collection('chats')
        .doc(chatRoomId)
        .collection('messages');

    await messagesCollection.add({
      'text': message,
      'sender': auth.currentUser!.uid,
      'timestamp': FieldValue.serverTimestamp(),
    });
  }

}