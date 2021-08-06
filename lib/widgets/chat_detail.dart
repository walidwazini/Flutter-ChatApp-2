import 'package:flutter/material.dart';

class ChatDetailPage extends StatefulWidget {
  // const ChatDetailPage({Key? key}) : super(key: key);

  @override
  _ChatDetailPageState createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  var color1 = Color.fromRGBO(190, 30, 90, 1);
  var messages = [
    {
      'from': 'Walid',
      'date': '15/07/20201',
      'time': '20:14',
      'message': 'Sir saya nak amek project tu.'
    },
    {
      'from': 'Sir Muz',
      'date': '15/07/20201',
      'time': '20:30',
      'message': 'Nice, nanti saya kasi details'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat Detail'),
        backgroundColor: color1,
      ),
      body: Column(
        children: [
          Row(
            children: [
              Expanded(
                  child: TextField(
                decoration: InputDecoration(hintText: 'Enter Message'),
              )),
              ElevatedButton(onPressed: () {}, child: Text('Send'))
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: messages.length,
                itemBuilder: (context, position) {
              return ListTile(
                title: Text(messages[position]['message']!),
                subtitle: Text(messages[position]['from']!),
              );
            }),
          )
        ],
      ),
    );
  }
}
