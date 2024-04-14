import 'package:coffeeapp/components/button_component.dart';
import 'package:coffeeapp/design/themes.dart';
import 'package:coffeeapp/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingFirstPage extends StatefulWidget {
  const OnBoardingFirstPage({super.key});

  @override
  State<OnBoardingFirstPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingFirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemes.backgroundPrincipalColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Lottie.asset(
            'assets/images/coffee01onboarding.json',
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30),
            child: Text(
              "Welcome to Coffee Delivery App",
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  color: Colors.black),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 20, left: 30),
            child: Text(
              "Find your next coffee for appreciate",
              style: TextStyle(fontSize: 18, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ButtonComponent(
                  color: AppThemes.principalColor,
                  title: 'Next',
                  width: 100,
                  heigh: 50,
                  icon: Icons.arrow_forward_ios,
                  sizeIcon: 10,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
