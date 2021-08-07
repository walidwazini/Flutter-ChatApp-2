import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';

var color1 = Color.fromRGBO(190, 30, 90, 1);
var profile1 = 'assets/images/person1.jpg';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        title: Text('Login Page', style: GoogleFonts.openSans( fontSize: 20), ),
        backgroundColor: Color.fromRGBO(150, 40, 80, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(50,110,50,10),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Image.asset(profile1,width: 40,),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide:BorderSide(color: color1) ),
                      hintText: '   Email / username',
                  ),
                ),
                SizedBox(height: 15,),
                TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
                      hintText: '   Password' ),
                  obscureText: true,
                ),
                SizedBox(height: 20,),

                // ----------------------     LOGIN BUTTON   ----------------------------
                ElevatedButton(onPressed: (){
                  Navigator.pushNamed(context, 'ChatList');
                }, child: Text('Login', style: GoogleFonts.openSans(),),
                  style: ElevatedButton.styleFrom(
                      primary: color1,
                    minimumSize: Size(160.0,35.0),
                  ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Didn\'t have and account?'),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'Register');
                      },
                      child: Text('Register Now',
                        style: TextStyle(decoration: TextDecoration.underline, color: Colors.pink),),
                    )
                  ],
                ),
                TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, 'RecoverPassword');
                  },
                  child: Text('Forgot Password'),
                  style: TextButton.styleFrom(primary: Color.fromRGBO(180, 40, 90, 1) ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
