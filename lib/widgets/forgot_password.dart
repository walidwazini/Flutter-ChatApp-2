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
        SizedBox( width: 300,
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide:BorderSide(color: color1) ),
                hintText: ' Enter your email address'),
          ),
        ),
        SizedBox(height: 12,),
        ElevatedButton(onPressed: (){}, child: Text('Send Email'),
            style: ElevatedButton.styleFrom(
              primary: color1,
              minimumSize: Size(165.0,35.0),
            ))
      ],
      ),
      ),
    );
  }
}
