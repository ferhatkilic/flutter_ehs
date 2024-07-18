import 'package:flutter/material.dart';
import 'package:flutter_application_yeni/anasayfa.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "ilk ders örnek",
      debugShowCheckedModeBanner: false,
      home: Anasayfa(),
    );
  }
}
