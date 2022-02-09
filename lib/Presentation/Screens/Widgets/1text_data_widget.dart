import 'package:flutter/material.dart';

class TextData extends StatelessWidget {
  const TextData({Key? key, required this.message}) : super(key: key);

  final String message;
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: const TextSpan(
        text: 'You are ',
        style: TextStyle(fontSize: 25.00),
        children: <TextSpan>[
          TextSpan(
            text: 'Young',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35.00,
              color: Colors.blue
            ),
          ),
        ],
      ),
    );
  }
}
