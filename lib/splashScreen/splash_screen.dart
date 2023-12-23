import 'dart:async';

import 'package:customer_app/assistants/assistant_methods.dart';
import 'package:customer_app/authentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:customer_app/global/global.dart';
import 'package:customer_app/mainScreens/main_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({super.key});

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  startTimer() {
    fAuth.currentUser != null
        ? AssistantMethods.readCurrentOnlineUserInfo()
        : null;
    Timer(const Duration(seconds: 3), () async {
      if (fAuth.currentUser != null) {
        currentFirebaseUser = fAuth.currentUser;
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const MainScreen()));
      } else {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
      }
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/logo.png"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Uber & inDrive Clone App",
                style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
