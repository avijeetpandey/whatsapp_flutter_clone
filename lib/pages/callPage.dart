import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/callModel.dart';

class CallPage extends StatefulWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  State<CallPage> createState() => CallPageState();
}

class CallPageState extends State<CallPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: callData.length,
      itemBuilder: (context, index) => Column(
        children: [
          const Divider(
            height: 10.0,
          ),
          ListTile(
              subtitle: Text(
                callData[index].time,
                style: const TextStyle(fontSize: 12.0, color: Colors.grey),
              ),
              title: Text(
                callData[index].name,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: const CircleAvatar(
                backgroundColor: Colors.blueGrey,
              ),
              trailing: const Icon(Icons.call))
        ],
      ),
    );
  }
}
