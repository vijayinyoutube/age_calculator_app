import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Widgets/3button.dart';
import '../../Components/spacers.dart';
import '../Widgets/2text_form_field.dart';
import '../Widgets/1text_data_widget.dart';
import '../../../business_logic/cubit/age_calculator_cubit.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late FocusNode calculateBtnFocusNode;
  late TextEditingController ageController;

  @override
  void initState() {
    super.initState();
    calculateBtnFocusNode = FocusNode();
    ageController = TextEditingController();
  }

  @override
  void dispose() {
    calculateBtnFocusNode.dispose();
    ageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<AgeCalculatorCubit, AgeCalculatorInitial>(
              builder: (context, state) {
                return TextData(message: state.stageOfLife);
              },
            ),
            const HeightSpacer(myHeight: 20),
            InputField(
              focusNode: calculateBtnFocusNode,
              ageController: ageController,
            ),
            const HeightSpacer(myHeight: 10),
            ButtonWidget(
              focusNode: calculateBtnFocusNode,
              ageController: ageController,
            ),
          ],
        ),
      ),
    );
  }
}
