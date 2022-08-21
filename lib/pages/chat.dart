import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/chatModel.dart';
import 'package:whatsapp_clone/pages/chatDetails.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => ChatPageState();
}

class ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chatData.length,
      itemBuilder: (context, index) => Column(
        children: [
          const Divider(
            height: 10.0,
          ),
          ListTile(
            onTap: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ChatDetails())),
            subtitle: Text(
              chatData[index].message,
              style: const TextStyle(fontSize: 12.0, color: Colors.grey),
            ),
            title: Text(
              chatData[index].name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            leading: const CircleAvatar(
              backgroundColor: Colors.blueGrey,
            ),
            trailing: Text(
              chatData[index].time,
              style: const TextStyle(fontSize: 14.0, color: Colors.grey),
            ),
          )
        ],
      ),
    );
  }
}
