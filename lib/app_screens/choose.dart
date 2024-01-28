// ignore_for_file: deprecated_member_use, use_build_context_synchronously

import 'dart:convert';

import 'package:disneyland_app/app_screens/admin_screens/admin_login.dart';
import 'package:disneyland_app/app_screens/user_screens/user_login.dart';
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

class UserChoice extends StatefulWidget {
  const UserChoice({super.key});

  @override
  State<UserChoice> createState() => _UserChoiceState();
}

class _UserChoiceState extends State<UserChoice> {
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  bool obscureText = true;
  bool isloading = false;
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
                    controller: nameController,
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
                    controller: phoneController,
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
                      controller: passwordController,
                    )),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: 300.w,
                  child: isloading
                      ? loadingWidget()
                      : PrimaryButton(
                          text: 'Sign Up',
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              //register user and move to voting screen
                              registerUser();
                            }
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

  //backend logic
  Future registerUser() async {
    try {
      setState(() {
        isloading = true;
      });

      String link = '$baseUrl$auth/register';

      RegisterUserModel newUser = RegisterUserModel(
          userId: 0,
          userName: nameController.text,
          email: emailController.text,
          phone: phoneController.text,
          password: passwordController.text,
          profileImage:
              'https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png',
          isEmailVerified: false,
          signUpDate: DateTime.now().toUtc().toIso8601String(),
          voteCasted: 0);

      var response = await ApiService().postRequest(link, newUser.toJson());

      if (response.statusCode == 200) {
        printLongString(response.body.toString());
        UserInfo user = UserInfo.fromJson(jsonDecode(response.body));
        TokenService.instance.setApiTokenValue(user.data.token);
        //update user value in token service
        TokenService.instance.setUserValue(user.data.user);
        //saving token to local storage

        SharedPreferences storage = await SharedPreferences.getInstance();
        storage.setString('token', user.data.token);

        //show toast message
        toastWidget(message: 'Signup successful');
        Navigator.push(context, MaterialPageRoute(builder: (context) => const VotingScreen()));
      } else {
        printLongString(response.body.toString());

        //getting message from body
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
