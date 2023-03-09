import 'dart:ui';

import 'package:fister/screens/LoginScreen.dart';
import 'package:flutter/material.dart';

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppBar(
                backgroundColor: Colors.white.withOpacity(0.0),
                elevation: 0.0,
                leading: IconButton(
                  icon: Icon(Icons.arrow_back_sharp,color: Colors.black87,),
                  onPressed: (){Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));},
                ),
              ),
              Image.network(
                'https://media.istockphoto.com/id/1306827906/vector/man-forgot-the-password-concept-of-forgotten-password-key-account-access-blocked-access.jpg?s=612x612&w=0&k=20&c=67nYr3ztbOn5uO6-mWBNCSw9mcHD9Z5M-QER-azGQ5w=',
             width: 340,
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                'Forgot Password?',
                style: Theme.of(context).textTheme.headline2,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Please Enter the E-mail or Phone no. from which you have registered.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle2,
              ),
              SizedBox(
                height: 20,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: ('E-mail/Phone'),
                    hintStyle: TextStyle(fontSize: 20.0),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black87, width: 3.0),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Send OTP',style: TextStyle(fontSize: 18),),
                  style: ElevatedButton.styleFrom(primary: Colors.black87),
                ),
              ),
              SizedBox(
                height: 20,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
