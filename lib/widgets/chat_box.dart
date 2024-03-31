import 'package:flutter/material.dart';

class ChatBox extends StatelessWidget {
  const ChatBox({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width - 30,
        decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              text,
              style: const TextStyle(fontSize: 22),
              textAlign: TextAlign.center, // Center the text
            ),
          ),
        ),
      ),
    );
  }
}
