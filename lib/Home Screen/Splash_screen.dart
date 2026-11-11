import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salon_service_app/Home%20Screen/Home_Screen.dart';

import '../Utils/AppColor/AppColors.dart';
import '../widgets/custom_text.dart';
import 'Onboardings_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  navigate()async{
    await Future.delayed(Duration(seconds: 3));
    Navigator.push(context, MaterialPageRoute(builder: (context)=>OnboardingsScreen()));
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    navigate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.Black,
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
