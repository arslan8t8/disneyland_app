// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:disneyland_app/app_screens/user_screens/forgot-password.dart';
import 'package:disneyland_app/app_screens/user_screens/voting_screen.dart';
import 'package:disneyland_app/models/user_model/user_model.dart';
import 'package:disneyland_app/services/api_service.dart';
import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/utility/constant.dart';

import 'package:disneyland_app/services/token_service.dart';
import 'package:disneyland_app/widgets/buttons.dart';
import 'package:disneyland_app/widgets/misc_widget.dart';
import 'package:disneyland_app/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserLogin extends StatefulWidget {
  const UserLogin({super.key});

  @override
  State<UserLogin> createState() => _UserLoginState();
}

class _UserLoginState extends State<UserLogin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool isloading = false;
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: primaryColor,
        body: SafeArea(
            child: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50.h),
                Center(
                  child: Image.asset(
                    'assets/logo.png',
                    color: colorWhite,
                  ),
                ),
                SizedBox(height: 70.h),
                SizedBox(
                  width: 300.w,
                  child: TextFieldWidget(
                    errorTxt: 'Please enter your email',
                    validate: true,
                    text: 'Email',
                    prefixIcon: const Icon(
                      Icons.email,
                    ),
                    controller: emailController,
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
                      controller: passwordController,
                      obsecureText: obscureText,
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
                    )),
                SizedBox(
                  height: 20.h,
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => const ForgotPassword()));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(right: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text('Forgot Password?',
                            style: TextStyle(
                                color: colorWhite, fontSize: 14.sp, fontWeight: FontWeight.w500)),
                      ],
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
                          text: 'Login',
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              loginUser();
                            }
                          },
                        ),
                ),
              ],
            ),
          ),
        )));
  }

  //backend functions
  Future loginUser() async {
    try {
      setState(() {
        isloading = true;
      });

      String link = '$baseUrl$auth/login';
      var body = {
        'email': emailController.text,
        'password': passwordController.text,
      };
      var response = await ApiService().postRequest(link, body);
      if (response.statusCode == 200) {
        setState(() {
          isloading = false;
        });
        printLongString(response.body.toString());
        UserInfo user = UserInfo.fromJson(jsonDecode(response.body));
        TokenService.instance.setApiTokenValue(user.data.token);
        //update user value in token service
        TokenService.instance.setUserValue(user.data.user);
        //saving token to local storage

        SharedPreferences storage = await SharedPreferences.getInstance();
        storage.setString('token', user.data.token);

        toastWidget(message: 'Login successful');

        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const VotingScreen()));
      } else {
        setState(() {
          isloading = false;
        });
        //getting message
        var message = jsonDecode(response.body)['message'];
        //show toast message
        toastWidget(message: message);
      }
    } catch (ex) {
      print(ex.toString());
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
