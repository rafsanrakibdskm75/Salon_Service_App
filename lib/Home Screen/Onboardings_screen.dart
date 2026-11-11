import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/AppColor/AppColors.dart';
import '../widgets/custom_button.dart';

class OnboardingsScreen extends StatefulWidget {
  const OnboardingsScreen({super.key});

  @override
  State<OnboardingsScreen> createState() => _OnboardingsScreenState();
}

class _OnboardingsScreenState extends State<OnboardingsScreen> {
  int currentPage = 0;
  final PageController controller = PageController();
  nextPage(){
    controller.nextPage(duration: Duration(seconds: 1), curve: Curves.easeIn);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColors.PrimaryColor,
      appBar: AppBar(
        title: const Text('Onboardings Screen'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: controller,
              onPageChanged: (index){
                setState(() {
                  currentPage = index;
                });
              },
              children: [
                Container(color: Colors.red),
                Container(color: Colors.green),
                Container(color: Colors.yellow),
              ],
            ),
          ),
          const SizedBox(height: 8),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SizedBox(
              width: 75,
              child: CustomButton(
                title: 'Next',
                onTap: () {
                  setState(() {
                    nextPage();
                  });
                },
              ),
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
