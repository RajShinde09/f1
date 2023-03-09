import 'package:fister/screens/SignupScreen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Homescreen'),
        leading: IconButton(
          onPressed: () async {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => SignupScreeen()));
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add_shopping_cart),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            Text(
              'Hello',
              style: Theme.of(context).textTheme.headline1,
            ),
            Text(
              'Welcome to Fister',
              style: Theme.of(context).textTheme.headline2,
            ),
            Text(
              'Be our Guest :)',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {}, child: Text('Button1')),
            OutlinedButton(onPressed: () {}, child: Text('Button2')),
          ],
        ),
      ),
    );
  }
}
