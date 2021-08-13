import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  // const RegisterPage({Key? key}) : super(key: key);
  var color1 = Color.fromRGBO(190, 30, 90, 1);
  var fullNameController = TextEditingController();
  var emailController = TextEditingController();
  var userNameController = TextEditingController();
  var passwordController = TextEditingController();
  var confrimPwController =TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Register Page'),
          backgroundColor: color1,
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: color1)),
                    hintText: 'Full Name',
                  ),
                  controller: fullNameController,
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: color1)),
                    hintText: 'Email',
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: color1)),
                    hintText: 'Username',
                  ),
                  controller: userNameController,
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide(color: color1)), hintText: 'Password',
                  ),
                  controller: passwordController,
                ),
                SizedBox(height: 15,),
                TextField(
                  decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: color1)), hintText: 'Confirmed Password',
                  ),
                  controller: confrimPwController,
                ),
                SizedBox(height: 15,),
                ElevatedButton(
                  onPressed: () {
                    if ( confrimPwController.value == passwordController.value ) {
                      print('Succesful!');
                    }
                    else {
                      print('Password not the same!');
                    }
                  },
                  child: Text('REGISTER NOW'),
                  style: ElevatedButton.styleFrom(
                    primary: color1,
                    minimumSize: Size(195.0, 35.0),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
