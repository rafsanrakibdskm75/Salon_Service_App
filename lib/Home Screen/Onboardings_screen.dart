import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text.dart';

class OnboardingsScreen extends StatefulWidget {
  const OnboardingsScreen({super.key});

  @override
  State<OnboardingsScreen> createState() => _OnboardingsScreenState();
}

class _OnboardingsScreenState extends State<OnboardingsScreen> {

  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0E1116),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: demo_data.length,
                  controller: _pageController,
                  onPageChanged: (index){
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) => Onboarding(
                  image: demo_data[index].image,
                  title: demo_data[index].title,
                  description: demo_data[index].description,
                  ),
                ),
              ),
               SizedBox(width: 60,height: 60,),
              Row(
                children: [
                  ...List.generate(demo_data.length, (index) => Padding(
                    padding: EdgeInsets.only(right:4),
                    child: dotind(isActive: index == _pageIndex,),
                  )),
                  const Spacer(),
                  CustomButton(title: 'Get Started',width: 120,height: 71, onTap: (){
                    _pageController.nextPage(curve: Curves.easeInOut, duration: Duration(seconds: 1));
                  },),
                  //const SizedBox(width: 8,),
                ],
              ),
              const SizedBox(height: 12),
            ],
          ),
        )
      ),
    );
  }
}

class dotind extends StatelessWidget {
  const new({
    super.key,
    this.isActive = false,
  });
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 12,
      height: isActive ? 12 : 8,
      decoration: BoxDecoration(
        color: isActive ? Colors.blue : Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}

class Onboard{
  final String image, title, description;

  Onboard({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<Onboard> demo_data = [
  Onboard(
    image: 'assets/image/img.png',
    title: 'Your satisfaction is our goal.',
    description: 'The best barber salon app for your good looks & beauty',
  ),
  Onboard(
    image: 'assets/image/imag1.jpg',
    title: 'Your satisfaction is our goal.',
    description: 'The best barber salon app for your good looks & beauty',
  ),
  Onboard(
    image: 'assets/image/imag2.jpg',
    title: 'Your satisfaction is our goal.',
    description: 'The best barber salon app for your good looks & beauty',
  ),
  Onboard(
    image: 'assets/image/imag3.jpg',
    title: 'Your satisfaction is our goal.',
    description: 'The best barber salon app for your good looks & beauty',
  ),
];

class Onboarding extends StatelessWidget {
  const new({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(image,
          width: double.infinity,
          height: 500,
          alignment: Alignment.topCenter,
          fit: BoxFit.contain,
        ),
        CustomText(
          text: title,
          fontSize: 36,
          color: Colors.white,
          fontWeight: FontWeight.w700,
          textAlign: TextAlign.start,
        ),
       // const Spacer(),
        const SizedBox(height: 8),
        CustomText(
          text: description,
          fontSize: 12,
          color: Colors.white,
          fontWeight: FontWeight.w400,
          //textAlign: TextAlign.start,
        ),
        const SizedBox(height: 12),
      ],
    );
  }
}
