import 'package:flutter/material.dart';
import 'package:proarea_notifications/constants/app_strings.dart';
import 'package:proarea_notifications/constants/const_assets.dart';
import 'package:proarea_notifications/pages/home_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

late double _opacity;

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _opacity = 0;
    setOpacity();
    navagateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ColoredBox(
        color: Colors.black,
        child: Center(
          child: AnimatedOpacity(
            opacity: _opacity,
            duration: const Duration(milliseconds: 2700),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(kLogoAsset),
                const Text(
                  AppStrings.splashPageString,
                  style: TextStyle(color: Colors.white, fontSize: 24),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void setOpacity() {
    Future.delayed(const Duration(), () {
      setState(() {
        _opacity = 1;
      });
    });
  }

  void navagateToHome() {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const HomePage(),
        ),
      );
    });
  }
}
