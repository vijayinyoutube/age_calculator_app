import 'package:flutter/material.dart';

import '../../Components/spacers.dart';
import '../Widgets/1text_data_widget.dart';
import '../Widgets/3button.dart';
import '../Widgets/2text_form_field.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            TextData(message: "value"),
            HeightSpacer(myHeight: 20),
            InputField(),
            HeightSpacer(myHeight: 10),
            ButtonWidget(),
          ],
        ),
      ),
    );
  }
}
