import 'package:flutter/material.dart';
import 'package:flutter_ticket_booking/screens/bottom_bar.dart';
import 'package:flutter_ticket_booking/utils/app_styles.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: primary),
      home: const BottomBar(),
    );
  }
}
