import 'package:flutter/material.dart';

void main() {
  runApp(WhatsApp());
}

class WhatsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Whatsapp Clone',
      theme: ThemeData(
          primaryColor: Color(0xff075e54), 
          accentColor: Color(0xff25d366)),
    );
  }
}
