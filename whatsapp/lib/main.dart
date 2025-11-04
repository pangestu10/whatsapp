import 'package:flutter/material.dart';
import 'package:whatsapp/widget/chatpage.dart';
import 'package:whatsapp/widget/homepage.dart';
import 'package:whatsapp/widget/userpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WhatsApp UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF121212),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Colors.green,
        ),
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => const WhatsAppHome(),
        '/chat': (context) => const WhatsAppChatPage(),
        '/user': (context) => const UserPage(),
      },
    );
  }
}
