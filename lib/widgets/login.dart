import 'package:flutter/material.dart';

var color1 = Color.fromRGBO(190, 30, 90, 1);

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: Text('Login Page'),
        backgroundColor: Color.fromRGBO(150, 40, 80, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50, 20, 50, 10),
        child: Center(
          child: Column(
            children: [
              Text('Welcome to login'),
              SizedBox(height: 140,),
              TextField(
                decoration: InputDecoration(hintText: 'Email / username'),
              ),
              TextField(
                decoration: InputDecoration(hintText: 'Password'),
              ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){}, child: Text('Login'),
                style: ElevatedButton.styleFrom(
                    primary: color1,
                  minimumSize: Size(140.0,35.0),
                ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Didn\'t have and account?'),
                  TextButton(
                    onPressed: () {},
                    child: Text('Register Now',
                      style: TextStyle(decoration: TextDecoration.underline, color: Colors.pink),),
                  )
                ],
              ),
              TextButton(
                onPressed: (){},
                child: Text('Forgot Password'),
                style: TextButton.styleFrom(primary: Color.fromRGBO(180, 40, 90, 1) ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
