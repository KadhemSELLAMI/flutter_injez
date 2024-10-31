import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'signin.dart';
import 'signp.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
   options: const FirebaseOptions(
  apiKey: "AIzaSyBmsTyzR_xkjWzOZ0swX81S61Jt2XvXdGo", 
  appId: "com.example.flutter_injez",
  messagingSenderId: "messagingSenderId", 
  projectId: "flutter-injez")
  );
   runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Signin(), 
      routes: {
        '/signin': (context) => Signin(), 
        '/signup': (context) => Signup(), 
      },
    );
  }
}










