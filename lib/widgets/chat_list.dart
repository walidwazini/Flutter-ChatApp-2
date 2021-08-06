import 'package:flutter/material.dart';

class ChatListPage extends StatefulWidget {
  // const ChatDetailPage({Key? key}) : super(key: key);

  @override
  _ChatListPageState createState() => _ChatListPageState();
}

class _ChatListPageState extends State<ChatListPage> {
  var color1 = Color.fromRGBO(190, 30, 90, 1);
  var users = [
    {'name' : "Walid", 'dept':'IT'}, {'name':'Ashraf', 'dept':'Marketing'},{'name':'Faiz','dept':'Finance'}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chat List'), backgroundColor: color1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.builder( itemCount: users.length,
            itemBuilder: (context, position){
          return ListTile(
            title: Text(users[position]['name']!),
            subtitle: Text(users[position]['dept']!),hoverColor: Colors.pinkAccent,
            trailing: Icon(Icons.arrow_forward_ios), onTap: (){
              Navigator.pushNamed(context, 'ChatDetails');
          },
          );
        }),
      )
    );
  }
}
