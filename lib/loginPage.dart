//import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'home.dart';

class LoginPage extends StatefulWidget {
  TextEditingController _passwordTextController = TextEditingController();
  TextEditingController _emailTextController = TextEditingController();
  @override
  _LoginPageState createState() => _LoginPageState();
}

/*class _LoginPageState extends State<LoginPage>{
  @override
  _navigatetohome();
}
_navigatetohome(){
  Navigator.push(context, MaterialPageRoute(builder: (context) =>MyHomePage() ));
}*/

Widget _buildEmail() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Index Number',
        style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.bold
        ),
      ),

      SizedBox(height: 11),

      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),

          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2),
            ),
          ],
        ),
        height: 60,
        child: TextField(
          keyboardType: TextInputType.emailAddress,
          
          style: TextStyle(
              color: Colors.black87
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.person_outline,
                color: Color(0xff398ae5),
              ),
              hintText: 'Index Number',
              hintStyle: TextStyle(
                color: Colors.black38,
              )
          ),
        ),
      ),
    ],
  );
}

Widget _buildPassword() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
      Text(
        'Password',
        style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.bold
        ),
      ),

      SizedBox(height: 11),
      Container(
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),

          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 6,
              offset: Offset(0,2),
            ),
          ],
        ),
        height: 60,
        child: TextField(
          obscureText: true,
          style: TextStyle(
              color: Colors.black87
          ),
          decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top: 14),
              prefixIcon: Icon(
                Icons.key,
                color: Color(0xff398ae5),
              ),
              hintText: 'Password',
              hintStyle: TextStyle(
                color: Colors.black38,
              )
          ),
        ),
      ),
    ],
  );
}

Widget _buildForgotPwdBtn(){
  return Container(
    alignment: Alignment.centerRight,
    child: TextButton(
      onPressed: () => print("User Pressed Forgot Password"),
      //padding: EdgeInsets.only(right:0),
      child: Text(
        'Forgot Password?',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),
      )
    ),
  );
}

Widget _buildLoginBtn(BuildContext context) {
  return Container(
    padding: EdgeInsets.symmetric(vertical: 25),
    width: double.infinity,
    child: RaisedButton(
        elevation: 5,
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const MyHomePage(title: 'HOSTEL RESERVE')));
        }, //=> print("User has Logged in"),
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
        ),
        color: Colors.white,
        child: Text(
          'LOGIN',
          style: TextStyle(
              color: Color(0xff398ae5),
              fontSize: 20,
              fontWeight: FontWeight.bold
          ),
        ),

    ),

  );
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: [
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Color(0x33398ae5),
                          Color(0x66398ae5),
                          Color(0x99398ae5),
                          Color(0xcc398ae5),
                          Color(0xff398ae5),
                        ])),
                child: SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Sign In',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 40,
                            fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(height: 50),
                      _buildEmail(),
                      SizedBox(height: 13),
                      _buildPassword(),
                      _buildForgotPwdBtn(),
                      _buildLoginBtn(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}







