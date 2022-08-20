import 'package:flutter/material.dart';
import 'package:whatsapp_clone/pages/home.dart';

void main() {
  runApp(const WhatsApp());
}

class WhatsApp extends StatelessWidget {
  const WhatsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: const Color(0xff075e54),
          accentColor: const Color(0xff25d366)),
      home: const HomePage(),
    );
  }
}
