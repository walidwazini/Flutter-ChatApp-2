import 'package:chat_app_2/widgets/body.dart';
import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: BodyTest(),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(title: Text('Testing'),);
}