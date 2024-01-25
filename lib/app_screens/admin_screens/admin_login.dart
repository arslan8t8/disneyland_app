import 'package:disneyland_app/services/color_service.dart';
import 'package:disneyland_app/widgets/buttons.dart';
import 'package:disneyland_app/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: SafeArea(
            child: Column(
          children: [
            SizedBox(height: 50.h),
            Center(
              child: Image.asset(
                'assets/logo.png',
                color: colorWhite,
              ),
            ),
            SizedBox(height: 100.h),
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
                    icon: obscureText ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
                  ),
                )),
            SizedBox(
              height: 20.h,
            ),
            SizedBox(
              width: 300.w,
              child: PrimaryButton(
                text: 'Login',
                onPressed: () {
                  //TODO apply backend logic here
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => const VotingScreen()));
                },
              ),
            ),
            Expanded(child: Container()),
          ],
        )));
  }
}
