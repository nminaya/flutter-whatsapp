import 'package:flutter/material.dart';
import 'package:flutter_whatsapp/whatsapp_home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "WhastApp",
      theme: new ThemeData(
        primaryColor: new Color(0xFF075E54),
        accentColor: new Color(0xFF25D366)
      ),
      home: new WhatsAppHome(),
    );
  }
}
