// ignore_for_file: use_build_context_synchronously

import 'package:disneyland_app/app_screens/admin_screens/setting_screens/change_password.dart';
import 'package:disneyland_app/app_screens/choose.dart';
import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(
          'Settings',
          style: TextStyle(color: colorWhite, fontSize: 16.sp, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
          child: Column(
        children: [
          Expanded(child: Container()),
          SizedBox(
            width: 300.w,
            child: PrimaryButton(
                text: 'Change Password',
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => const ChangePassword()));
                },
                color: color4),
          ),
          SizedBox(
            height: 20.h,
          ),
          SizedBox(
            width: 300.w,
            child: PrimaryButton(
                text: 'Logout',
                onPressed: () async {
                  SharedPreferences prefs = await SharedPreferences.getInstance();
                  await prefs.clear();

                  //navigate to login screen
                  Navigator.pushReplacement(
                      context, MaterialPageRoute(builder: (context) => const UserChoice()));
                },
                color: color4),
          ),
          Expanded(child: Container()),
        ],
      )),
    );
  }
}
