import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.blue, width: 1),
        minimumSize: const Size(175, 50),
      ),
      onPressed: () {},
      child: const Text('Calculate'),
    );
  }
}
