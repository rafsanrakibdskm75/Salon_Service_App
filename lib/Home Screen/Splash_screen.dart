import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_text.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/image/splash.png',
              width: 144,
              height: 144,
              fit: BoxFit.contain,
              ),
              const SizedBox(height: 20),
              CustomText(
                text: 'Welcome to Salon Service App',
                fontSize: 14,
                fontWeight: FontWeight.bold,
                textAlign: TextAlign.center,
              ),
              const CircularProgressIndicator(),
            ],
          ),
        ),
    );
  }
}
