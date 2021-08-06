import 'package:flutter/material.dart';

class BodyTest extends StatelessWidget {
  const BodyTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          decoration:
              BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
          child: SafeArea(
              child: Row(
            children: [
              Icon(
                Icons.mic,
                color: Colors.red,
              ),
              Expanded(
                  child: Container(
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Colors.redAccent,
                ),
                child: Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.sentiment_dissatisfied,
                        color: Colors.greenAccent),
                    SizedBox(
                      width: 2,
                    ),
                    Expanded(
                        child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Type Message',
                        border: InputBorder.none,
                      ),
                    ))
                  ],
                ),
              ))
            ],
          )),
        ),
      ],
    );
  }
}
