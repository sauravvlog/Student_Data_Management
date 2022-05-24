import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

import 'pages/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(); 
  runApp(LoginUiApp());
}

class LoginUiApp extends StatelessWidget {

  Color _primaryColor = Colors.green.shade400;
  Color _accentColor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      home: SplashScreen(title: 'Flutter Login UI'),
    );
  }
}


