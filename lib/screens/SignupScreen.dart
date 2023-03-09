import 'package:firebase_auth/firebase_auth.dart';
import 'package:fister/screens/LoginScreen.dart';
import 'package:fister/screens/mainScreen.dart';
import 'package:flutter/material.dart';

class SignupScreeen extends StatefulWidget {
  const SignupScreeen({Key? key}) : super(key: key);

  @override
  State<SignupScreeen> createState() => _SignupScreeenState();
}

class _SignupScreeenState extends State<SignupScreeen> {
  @override
  Widget build(BuildContext context) {
    final _auth =FirebaseAuth.instance;
    return SafeArea(
      child: Scaffold(
          body: SingleChildScrollView(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              'https://media.istockphoto.com/id/1281150061/vector/register-account-submit-access-login-password-username-internet-online-website-concept.jpg?s=612x612&w=0&k=20&c=9HWSuA9IaU4o-CK6fALBS5eaO1ubnsM08EOYwgbwGBo=',
              scale: 2,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Create an account',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 25,
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text(
                  'Full Name',
                  style: TextStyle(fontSize: 20),
                ),
                prefixIcon: Icon(Icons.person_outline_rounded),
                border: OutlineInputBorder(),
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 4.0, color: Colors.blue)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text(
                  'E-Mail',
                  style: TextStyle(fontSize: 20),
                ),
                prefixIcon: Icon(Icons.email_outlined),
                border: OutlineInputBorder(),
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 4.0, color: Colors.blue)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                label: Text(
                  'Phone no.',
                  style: TextStyle(fontSize: 20),
                ),
                prefixIcon: Icon(Icons.numbers_outlined),
                border: OutlineInputBorder(),
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 4.0, color: Colors.blue)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              obscuringCharacter: '#',
              decoration: InputDecoration(
                label: Text(
                  'Password',
                  style: TextStyle(fontSize: 20),
                ),
                prefixIcon: Icon(Icons.password_outlined),
                border: OutlineInputBorder(),
                labelStyle: TextStyle(color: Colors.black),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 4.0, color: Colors.blue)),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MainScreen()));
                    },
                    child: Text('SignUp'.toUpperCase()),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                    ))),
            SizedBox(
              height: 10,
            ),
            Text(('OR')),
            SizedBox(
                width: double.infinity,
                child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.ac_unit_sharp),
                    label: Text('Sign in with Google'.toUpperCase()))),
            TextButton(
                onPressed: () async {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginScreen()));
                },
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: 'Already have an Account? ',
                      style: Theme.of(context).textTheme.bodyText1),
                  TextSpan(text: 'Login'),
                ])))
          ],
        ),
      )),
    );
  }
}
