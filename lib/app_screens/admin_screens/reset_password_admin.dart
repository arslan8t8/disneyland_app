// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:disneyland_app/app_screens/user_screens/user_login.dart';
import 'package:disneyland_app/services/api_service.dart';
import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/utility/constant.dart';
import 'package:disneyland_app/widgets/buttons.dart';
import 'package:disneyland_app/widgets/misc_widget.dart';
import 'package:disneyland_app/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetPasswordAdmin extends StatefulWidget {
  final String email;
  const ResetPasswordAdmin({super.key, required this.email});

  @override
  State<ResetPasswordAdmin> createState() => _ResetPasswordAdminState();
}

class _ResetPasswordAdminState extends State<ResetPasswordAdmin> {
  //declare controllers
  TextEditingController codeController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  //declare form key
  final _formKey = GlobalKey<FormState>();

  //declare obscure text
  bool obscureText = true;
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                SizedBox(height: 50.h),
                Center(
                  child: Image.asset(
                    'assets/logo.png',
                    color: colorWhite,
                  ),
                ),
                SizedBox(height: 20.h),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text(
                    'Please check your email INBOX & SPAM folder for password reset code. The code will expired in 10 mintues',
                    style: TextStyle(color: colorWhite, fontSize: 14.sp, fontWeight: FontWeight.w400),
                  ),
                ),
                SizedBox(height: 20.h),
                SizedBox(
                  width: 300.w,
                  child: TextFieldWidget(
                    validate: true,
                    errorTxt: 'Please enter email code',
                    text: 'Enter Code',
                    prefixIcon: const Icon(
                      Icons.code_outlined,
                    ),
                    controller: codeController,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: 300.w,
                  child: TextFieldWidget(
                    text: 'New Password',
                    validate: true,
                    obsecureText: obscureText,
                    errorTxt: 'Please enter new password',
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      icon:
                          obscureText ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
                    ),
                    controller: newPasswordController,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: 300.w,
                  child: TextFieldWidget(
                    text: 'Confirm Password',
                    prefixIcon: const Icon(
                      Icons.lock_outline,
                    ),
                    obsecureText: obscureText,
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      icon:
                          obscureText ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
                    ),
                    validate: true,
                    errorTxt: 'Please re-enter new password',
                    controller: confirmPasswordController,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: 300.w,
                  child: isloading
                      ? loadingWidget()
                      : PrimaryButton(
                          text: 'Reset Password',
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              if (newPasswordController.text != confirmPasswordController.text) {
                                toastWidget(message: 'Passwords do not match');
                              } else {
                                resetUserPassword();
                              }
                            }
                          },
                        ),
                ),
              ],
            )),
      )),
    );
  }

  //backend functions

  Future resetUserPassword() async {
    try {
      setState(() {
        isloading = true;
      });

      String link = '$baseUrl$adminEndpoint/reset-password-admin';

      var body = {
        'email': widget.email,
        'password': newPasswordController.text,
        'code': codeController.text,
      };

      var response = await ApiService().postRequest(link, body);

      if (response.statusCode == 200) {
        setState(() {
          isloading = false;
        });
        toastWidget(message: 'Password reset successful');
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const UserLogin()));
      } else {
        print(response.body.toString());
        setState(() {
          isloading = false;
        });

        var message = jsonDecode(response.body)['message'];

        toastWidget(message: message);
      }
    } catch (ex) {
      setState(() {
        isloading = false;
      });
      //show toast message
      toastWidget(message: 'Error occured, please try again');
    } finally {
      isloading = false;
      setState(() {});
    }
  }
}
