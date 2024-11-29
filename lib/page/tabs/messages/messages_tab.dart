import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:unithub/core/di/setup_injections.dart';
import 'package:unithub/data/repository/chat/chat_room.dart';
import 'package:unithub/page/tabs/messages/widgets/chat_message.dart';

class MessagesTab extends StatefulWidget {

  const MessagesTab({ super.key });

  @override
  State<MessagesTab> createState() => _MessagesTabState();
}

class _MessagesTabState extends State<MessagesTab> {

  final chat = i<ChatRoom>();
  
  final TextEditingController _controller = TextEditingController();
  String? chatRoomId;

  @override
  void initState() {
    super.initState();
    initializeChat();
  }

  Future<void> initializeChat() async {
    final currentUserId = FirebaseAuth.instance.currentUser!.uid;
    final targetUserId = currentUserId == "PMfMGcrFkeb87Sz5Q7tUb4rhTkC3" 
      ? "UefoyEXdSLQAdmDDkWrvlBrIsXD2" 
      : "PMfMGcrFkeb87Sz5Q7tUb4rhTkC3";

    final List<String> orderedIds = [currentUserId, targetUserId]..sort();
    
    final roomId = await chat.getOrCreateChatRoom(orderedIds[0], orderedIds[1]);

    setState(() {
      chatRoomId = roomId;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (chatRoomId == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      appBar: AppBar(title: const Text('Fórum')),
      body: Column(
        children: [
          Expanded(child: buildChatMessages(chatRoomId!)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: "Digite sua mensagem",
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send),
                  onPressed: () async {
                    final message = _controller.text.trim();
                    if (message.isNotEmpty) {
                      await chat.sendMessage(chatRoomId!, message);
                      _controller.clear();
                    }
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildChatMessages(String chatRoomId) {
    return StreamBuilder<QuerySnapshot>(
      stream: FirebaseFirestore.instance
          .collection('chats')
          .doc(chatRoomId)
          .collection('messages')
          .orderBy('timestamp', descending: true)
          .snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }
        final messages = snapshot.data!.docs;

        return ListView.builder(
          reverse: true,
          itemCount: messages.length,
          itemBuilder: (context, index) {
            final message = messages[index].data() as Map<String, dynamic>;
            final isMe = message['sender'] == FirebaseAuth.instance.currentUser!.uid;

            return ChatMessage(
              text: message['text'],
              isMe: isMe,
            );
          },
        );
      },
    );
  }

}