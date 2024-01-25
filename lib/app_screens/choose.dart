// ignore_for_file: deprecated_member_use

import 'package:disneyland_app/app_screens/admin_screens/admin_login.dart';
import 'package:disneyland_app/app_screens/user_screens/user_login.dart';
import 'package:disneyland_app/app_screens/user_screens/voting_screen.dart';
import 'package:disneyland_app/services/color_service.dart';
import 'package:disneyland_app/widgets/buttons.dart';
import 'package:disneyland_app/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserChoice extends StatefulWidget {
  const UserChoice({super.key});

  @override
  State<UserChoice> createState() => _UserChoiceState();
}

class _UserChoiceState extends State<UserChoice> {
  //delare form key
  final _formKey = GlobalKey<FormState>();
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: primaryColor,
        body: SafeArea(
            child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Center(
                  child: Image.asset(
                    'assets/logo.png',
                    color: colorWhite,
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: 300.w,
                  child: TextFieldWidget(
                    errorTxt: 'Please enter your name',
                    validate: true,
                    text: 'Name',
                    prefixIcon: const Icon(
                      Icons.person,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: 300.w,
                  child: TextFieldWidget(
                    errorTxt: 'Please enter your phone number',
                    validate: true,
                    text: 'Phone Number',
                    prefixIcon: const Icon(
                      Icons.phone,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: 300.w,
                  child: TextFieldWidget(
                    errorTxt: 'Please enter your email',
                    validate: true,
                    text: 'Email',
                    prefixIcon: const Icon(
                      Icons.email,
                    ),
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                    width: 300.w,
                    child: TextFieldWidget(
                      errorTxt: 'Please enter your password',
                      validate: true,
                      text: 'Password',
                      prefixIcon: const Icon(
                        Icons.lock,
                      ),
                      obsecureText: obscureText,
                      suffixIcon: IconButton(
                        onPressed: () {},
                        icon: obscureText
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                      ),
                    )),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: 300.w,
                  child: PrimaryButton(
                    text: 'Sign Up',
                    onPressed: () {
                      //TODO apply backend logic here
                      Navigator.push(context, MaterialPageRoute(builder: (context) => VotingScreen()));
                    },
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Divider(
                  color: colorWhite,
                  thickness: 1,
                  indent: 20.w,
                  endIndent: 20.w,
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                    width: 300.w,
                    child: EmailButton(
                        color: color3,
                        icon: const Icon(
                          Icons.email,
                          color: colorWhite,
                        ),
                        text: 'Login as user',
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => const UserLogin()));
                        })),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                    width: 300.w,
                    child: EmailButton(
                        color: colorText2,
                        icon: const Icon(
                          Icons.admin_panel_settings,
                          color: colorWhite,
                        ),
                        text: 'Login as admin',
                        onTap: () {
                          Navigator.push(
                              context, MaterialPageRoute(builder: (context) => const AdminLogin()));
                        })),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
