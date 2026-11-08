import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:salon_service_app/widgets/custom_button.dart';

import '../widgets/custom_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Salon Service App'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(
            text: 'Welcome to Salon Service App',
            fontSize: 24,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20),
          CustomButton(title: 'Tab', onTap: (){}),
        ],
      ),
    );
  }
}
