import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatelessWidget {
  // const ForgotPasswordPage({Key? key}) : super(key: key);
  var color1 = Color.fromRGBO(190, 30, 90, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recovery Password'), backgroundColor: color1,
      ),
      body: Center(child: Column( mainAxisAlignment: MainAxisAlignment.center, children: [
        TextField(
          decoration: InputDecoration(hintText: ' Enter your email address'),
        ),
        ElevatedButton(onPressed: (){}, child: Text('Send Email'))
      ],
      ),
      ),
    );
  }
}
