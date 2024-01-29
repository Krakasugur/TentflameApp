import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:tentflameapp/sayfalar/anasayfa.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';


void main() {
  runApp(Tentflame());
}



class Tentflame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tentflame',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SplashScreen(),
    );
  }
}
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AnimatedSplashScreen(
          splash: Lottie.asset('assets/splash/girisanimasyon.json'),
          nextScreen: anasayfa(),
          splashIconSize: 250,
          duration: 3000,
          splashTransition: SplashTransition.sizeTransition,
          pageTransitionType: PageTransitionType.leftToRightWithFade,
          animationDuration: const Duration(seconds: 2),
        ),
        Positioned(
          bottom: 100,
          right: 10,
          child: Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Text(
              'TENTFLAME',
              style: TextStyle(
                fontFamily: 'Bungee',
                fontSize: 40,
              ),
            ),
        ),),
        Positioned(
          bottom: 20,
          child: Container(
            width: MediaQuery.of(context).size.width,
            alignment: Alignment.center,
            child: Text(
              'Yükleniyor...',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}