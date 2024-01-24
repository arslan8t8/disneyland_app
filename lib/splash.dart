import 'package:disneyland_app/app_screens/choose.dart';
import 'package:disneyland_app/services/color_service.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 4200), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const UserChoice()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(child: Container()),
              Center(
                child: Image.asset(
                  'assets/logo.png',
                  color: colorWhite,
                ),
              ),
              Center(
                child: Image.asset('assets/cen.gif'),
              ),
              Expanded(child: Container()),
            ],
          ),
        ));
  }
}
