import 'package:flutter/material.dart';
import 'package:apex_e_commerce_app/screens/home.dart';

class SplashScreen  extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      backgroundColor:Color.fromARGB(255, 12, 1, 53) ,
      //Navigate to home page when logo clicked
          body:GestureDetector(
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const Home(),
              ),
            );
          },
          child: Container(
            width: double.infinity,
            height: double.infinity,
            color: const Color(0xFF25185A),

            // splash screen widgets
            child: Center(
              child: Image.asset("assets/logo.png"),
            ),
          ),
        ),
    );
  }
}