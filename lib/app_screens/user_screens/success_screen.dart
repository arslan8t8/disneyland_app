// ignore_for_file: deprecated_member_use

import 'package:disneyland_app/app_screens/user_screens/voting_screen.dart';
import 'package:disneyland_app/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

class SuccessVoteScreen extends StatefulWidget {
  const SuccessVoteScreen({super.key});

  @override
  State<SuccessVoteScreen> createState() => _SuccessVoteScreenState();
}

class _SuccessVoteScreenState extends State<SuccessVoteScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) => const VotingScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: primaryColor,
        body: SafeArea(
            child: Column(
          children: [
            Expanded(child: Container()),
            Center(
              child: SizedBox(
                height: 100.h,
                width: 100.w,
                child: Lottie.asset('assets/success.json'),
              ),
            ),
            SizedBox(height: 20.h),
            const Text(
              'Thank you for voting!',
              style: TextStyle(color: colorWhite, fontSize: 20),
            ),
            Expanded(child: Container()),
          ],
        )),
      ),
    );
  }
}
