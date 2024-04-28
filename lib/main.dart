import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:streetvendors_admin_web_portal/authentication/login_screen.dart';
import 'package:streetvendors_admin_web_portal/main_screens/home_screen.dart';

Future<void> main() async
{
  WidgetsFlutterBinding.ensureInitialized(); //1st Main line added of error and flutter pub upgrade --major-versions,flutter pub outdated
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: "AIzaSyAxM-d7AT1ytwU1ebJnOTxVlH0hHn9nHZ4",
      appId: "1:488945725454:web:e35dbc2b02a42cf74c0c5f",
      messagingSenderId: "488945725454",
      projectId: "streetvendors-app",
    ),
  );  //2nd Main line added of error and index.html updated as from clone app videos
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
      home: FirebaseAuth.instance.currentUser == null ?  const LoginScreen() : const HomeScreen(),
    );
  }
}

