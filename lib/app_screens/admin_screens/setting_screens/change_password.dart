// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:disneyland_app/app_screens/choose.dart';
import 'package:disneyland_app/models/admin_model/admin_model.dart';
import 'package:disneyland_app/models/user_model/user_model.dart';
import 'package:disneyland_app/services/api_service.dart';
import 'package:disneyland_app/services/token_service.dart';
import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/utility/constant.dart';
import 'package:disneyland_app/widgets/buttons.dart';
import 'package:disneyland_app/widgets/misc_widget.dart';
import 'package:disneyland_app/widgets/textfield_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  State<ChangePassword> createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final admin = TokenService.instance.value.admin.value;

  //controllers
  TextEditingController currentPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  //form key
  final _formKey = GlobalKey<FormState>();

  bool isloading = false;

  bool obscureText = true;

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
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 50.h,
                  ),
                  SizedBox(
                    width: 300.w,
                    child: TextFieldWidget(
                      text: 'Current Password',
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                      ),
                      validate: true,
                      errorTxt: 'Please enter your current password',
                      controller: currentPasswordController,
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        icon: obscureText
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
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
                      validate: true,
                      errorTxt: 'Please enter your new password',
                      controller: newPasswordController,
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        icon: obscureText
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
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
                      validate: true,
                      errorTxt: 'Please enter your confirm password',
                      controller: confirmPasswordController,
                      prefixIcon: const Icon(
                        Icons.lock_outline,
                      ),
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            obscureText = !obscureText;
                          });
                        },
                        icon: obscureText
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                      ),
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
                                  toastWidget(
                                      message: 'New password and confirm password does not match');
                                } else {
                                  changeMyPassword(admin!);
                                }
                              }
                            },
                          ),
                  ),
                ],
              ),
            ),
          ),
        ),
      )),
    );
  }

  //backend integration

  Future changeMyPassword(AdminData user) async {
    try {
      setState(() {
        isloading = true;
      });

      //call api
      String link = '$baseUrl$adminEndpoint/change-password-admin';
      var body = {
        "email": user.email,
        "oldPassword": currentPasswordController.text,
        "newPassword": newPasswordController.text
      };

      var response = await ApiService().postRequest(link, body);

      if (response.statusCode == 200) {
        //show toast message
        toastWidget(message: 'Password changed successfully');

        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.clear();

        //navigate to login screen
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const UserChoice()));
      } else {
        setState(() {
          isloading = false;
        });

        var message = jsonDecode(response.body)['message'];

        //show toast message
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
