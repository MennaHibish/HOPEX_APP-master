import 'package:flutter/material.dart';
import 'package:hopex/views/screens/01.intro/splash.dart';
import 'package:hopex/views/sign_up/register.dart';
import 'package:hopex/views/sign_up/verification.dart';
import 'package:hopex/views/widgets/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home:
      NavBar(),
      //VerifiScreen(),
     // Register(),
      //const SplashScreen(),
    );
  }
}
