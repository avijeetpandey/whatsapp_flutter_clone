import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/messagePage.dart';

class ChatDetails extends StatefulWidget {
  const ChatDetails({Key? key}) : super(key: key);

  @override
  State<ChatDetails> createState() => ChatDetailsPageState();
}

class ChatDetailsPageState extends State<ChatDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.0,
        title: Row(
          children: const [
            CircleAvatar(
              backgroundColor: Colors.lightGreen,
              radius: 15,
            ),
            Padding(
              padding: EdgeInsets.only(left: 6.0),
              child: Text("Rahul Upadhyay"),
            )
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {
                print("Video call button Pressed");
              },
              icon: const Icon(Icons.video_call)),
          IconButton(
              onPressed: () {
                print('Call button pressed');
              },
              icon: const Icon(Icons.call)),
          IconButton(
              onPressed: () {
                print("More button pressed");
              },
              icon: const Icon(Icons.more_vert))
        ],
      ),
      body: Column(
        children: [
          const Expanded(child: MessagePage()),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(16.0),
            child: Flexible(
                child: TextFormField(
              minLines: 1,
              maxLines: 5,
              decoration: InputDecoration(
                  hintText: "Enter the message",
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 0.0),
                      borderRadius: BorderRadius.circular(50)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          const BorderSide(color: Colors.grey, width: 0.0),
                      borderRadius: BorderRadius.circular(50))),
            )),
          )
        ],
      ),
    );
  }
}
