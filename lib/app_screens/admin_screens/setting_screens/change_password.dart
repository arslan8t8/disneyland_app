import 'package:disneyland_app/app_screens/choose.dart';
import 'package:disneyland_app/services/color_service.dart';
import 'package:disneyland_app/widgets/buttons.dart';
import 'package:disneyland_app/widgets/textfield_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        elevation: 0,
        title: Text(
          'Change Password',
          style: TextStyle(color: colorWhite, fontSize: 16.sp, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(10.0.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: Text('Write your registered email to reset your password',
                    softWrap: true,
                    style: TextStyle(color: colorWhite, fontSize: 16.sp, fontWeight: FontWeight.w500)),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: 300.w,
                child: TextFieldWidget(
                  text: 'Email',
                  prefixIcon: Icon(
                    Icons.email_outlined,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: 300.w,
                child: PrimaryButton(
                  text: 'Get Password Reset Code',
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Text(
                'We have send you a 6 digit code by email to reset your password, code will expire in 10 minutes.',
                softWrap: true,
                style: TextStyle(color: colorWhite, fontSize: 16.sp, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: 300.w,
                child: TextFieldWidget(
                  text: 'Enter Code',
                  prefixIcon: Icon(
                    Icons.code_outlined,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: 300.w,
                child: TextFieldWidget(
                  text: 'New Password',
                  prefixIcon: Icon(
                    Icons.lock_outline,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.visibility_outlined),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: 300.w,
                child: TextFieldWidget(
                  text: 'Confirm Password',
                  prefixIcon: Icon(
                    Icons.lock_outline,
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.visibility_outlined),
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: 300.w,
                child: PrimaryButton(
                  text: 'Reset Password',
                  onPressed: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => UserChoice()));
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
