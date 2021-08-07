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
  return AppBar(
    automaticallyImplyLeading: false,
    title: Row(children: [
      BackButton(),
      CircleAvatar( backgroundImage: AssetImage('assets/images/person2.jpg'),),
      SizedBox(width: 15,),
      Column( crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text('Sarah', style: TextStyle(fontSize: 18),),
        Text('Active now', style: TextStyle(fontSize: 12),),
      ],)
    ],),
    actions: [
      IconButton(onPressed: (){}, icon: Icon(Icons.local_phone)),
      IconButton(onPressed: (){}, icon: Icon(Icons.videocam))
    ],
  );
}