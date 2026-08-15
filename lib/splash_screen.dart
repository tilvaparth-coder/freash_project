
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'select_1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      if (mounted) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Select1()),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [

          /// 🔹 FULL SCREEN BACKGROUND IMAGE
          Positioned.fill(
            child: Image.asset(
              'assets/images/splash.png',
              fit: BoxFit.cover,
            ),
          ),

          /// 🔹 CONTENT
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Spacer(),

              /// APP NAME
              const Text(
                'Malesync',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,

                ),
              ),

              const SizedBox(height: 50),

              /// 🔥 HEXAGON DOTS LOADER
              LoadingAnimationWidget.hexagonDots(
                color:  const Color(0xFFD6B585),
                size: 40,
              ),

              const Spacer(),
            ],
          ),
        ],
      ),
    );
  }
}
