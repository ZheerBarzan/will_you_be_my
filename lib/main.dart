import 'package:flutter/material.dart';
import 'package:will_you_be_my/home_page.dart';

void main() {
  runApp(WillYou());
}

class WillYou extends StatelessWidget {
  const WillYou({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Valentine App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
