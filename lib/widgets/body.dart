import 'package:flutter/material.dart';
import 'package:chat_app_2/widgets/chat_input_field.dart';

class BodyTest extends StatelessWidget {
  const BodyTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        ChatInputField(),
      ],
    );
  }
}


