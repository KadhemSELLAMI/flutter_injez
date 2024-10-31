import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'view/signin_page.dart';
import 'view/signup_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBmsTyzR_xkjWzOZ0swX81S61Jt2XvXdGo",
          appId: "com.example.flutter_injez",
          messagingSenderId: "messagingSenderId",
          projectId: "flutter-injez"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Auth App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SigninPage(),
      routes: {
        'signin': (context) => const SigninPage(),
        'signup': (context) => const SignupPage(),
      },
    );
  }
}
