import 'package:flutter/material.dart';

class ChatInputField extends StatelessWidget {
  const ChatInputField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: Colors.greenAccent,
          boxShadow:[ BoxShadow(
              offset:Offset(0,4),
              blurRadius: 32,
              color: Colors.blueGrey.withOpacity(0.09)
          )]
      ),
      //     BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor)
      child: SafeArea(child: Row(
        children: [
          Icon(Icons.mic, color: Colors.red,),
          Expanded(
              child: Container( height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.redAccent,
                ),
                child: Row( children: [
                  SizedBox(width: 10,),
                  Icon(Icons.sentiment_dissatisfied, color: Colors.greenAccent),
                  SizedBox(width: 2,),
                  Expanded(child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type Message',
                      border: InputBorder.none,
                    ),
                  )),
                  Icon(Icons.attach_file),
                  Icon(Icons.camera_alt),
                ],
                ),
              ))
        ],
      )),
    );
  }
}