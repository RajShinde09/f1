import 'package:fister/screens/SignupScreen.dart';
import 'package:fister/screens/forgotScreen.dart';
import 'package:fister/screens/mainScreen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static const String Logintitle = "Welcome Back!!";

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppBar(
              backgroundColor: Colors.white.withOpacity(0.0),
              elevation: 0.0,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_sharp,
                  color: Colors.black87,
                ),
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SignupScreeen()));
                },
              ),
            ),
            Image.network(
              'https://t4.ftcdn.net/jpg/04/28/75/97/360_F_428759715_jsOPITlaytE3QXc2yI1D4U6uwZdVGkRp.jpg',
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              LoginScreen.Logintitle,
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              'Please login to continue..',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              decoration: InputDecoration(
                  label: Text(
                    'E-mail',
                    style: TextStyle(fontSize: 23, color: Colors.black87),
                  ),
                  prefixIcon: Icon(
                    Icons.email_outlined,
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: (OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.lightBlueAccent, width: 3)))),
            ),
            SizedBox(
              height: 10,
            ),
            TextField(
              obscureText: true,
              obscuringCharacter: '*',
              decoration: InputDecoration(
                  label: Text(
                    'Password',
                    style: TextStyle(fontSize: 23, color: Colors.black87),
                  ),
                  prefixIcon: Icon(
                    Icons.fingerprint,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.remove_red_eye_sharp,
                    ),
                  ),
                  border: OutlineInputBorder(),
                  focusedBorder: (OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Colors.lightBlueAccent, width: 3)))),
            ),
            SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                    onPressed: () async {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ForgotScreen()));
                    },
                    child: Text('Forgot Password?'))),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => MainScreen()));
                },
                child: Text(
                  'Login'.toUpperCase(),
                  style: TextStyle(fontSize: 15),
                ),
                style: ElevatedButton.styleFrom(primary: Colors.black),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SignupScreeen()));
                },
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                      text: "Don't have an account?? ",
                      style: Theme.of(context).textTheme.bodyText1),
                  TextSpan(text: 'Register'),
                ]))),
          ],
        ),
      ),
    ));
  }
}
