import 'package:firebase_core/firebase_core.dart';
import 'package:fister/screens/SignupScreen.dart';
import 'package:fister/screens/mainScreen.dart';
import 'package:fister/themes/theme.dart';
import 'package:flutter/material.dart';
import 'package:fister/screens/LoginScreen.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    //options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp((MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: pApptheme.lightTheme,
      darkTheme: pApptheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SignupScreeen(),
    );
  }
}
