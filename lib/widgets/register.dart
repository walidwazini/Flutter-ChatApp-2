import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  // const RegisterPage({Key? key}) : super(key: key);
  var color1 = Color.fromRGBO(190, 30, 90, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register Page'), backgroundColor: color1,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:BorderSide(color: color1) ),
                hintText: 'Full Name',
              ),
            ),
            SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:BorderSide(color: color1) ),
                hintText: 'Email',
              ),
            ),
            SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:BorderSide(color: color1) ),
                hintText: 'Password',
              ),
            ),
            SizedBox(height: 15,),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide:BorderSide(color: color1) ),
                hintText: 'Confirmed Password',
              ),
            ),
            SizedBox(height: 15,),
            ElevatedButton(onPressed: (){}, child: Text('REGISTER NOW'),
              style: ElevatedButton.styleFrom(
                primary: color1,
                minimumSize: Size(195.0,35.0),
              ),),
          ],
        ),
      )
    );
  }
}
