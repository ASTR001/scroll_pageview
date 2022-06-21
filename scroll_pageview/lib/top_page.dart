import 'package:flutter/material.dart';

class TopPage extends StatelessWidget {
  final String myTitle;
  final Color myColor;
  const TopPage({Key? key, required this.myTitle, required this.myColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myColor,
      body: Center(
        child: Text(myTitle, style: const TextStyle(color: Colors.white, fontSize: 22),),
      ),
    );
  }
}
