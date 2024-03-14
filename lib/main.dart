import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:streetvendors_admin_web_portal/authentication/login_screen.dart';


Future<void> main() async
{
  await Firebase.initializeApp();  //used to initialize firebase in our application
  runApp(const MyApp());
}

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Admin Web Portal',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
    );
  }
}

