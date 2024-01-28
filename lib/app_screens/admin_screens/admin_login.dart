// ignore_for_file: use_build_context_synchronously

import 'dart:convert';

import 'package:disneyland_app/models/admin_model/admin_model.dart';
import 'package:disneyland_app/models/user_model/user_model.dart';
import 'package:disneyland_app/services/api_service.dart';
import 'package:disneyland_app/services/token_service.dart';
import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/utility/constant.dart';
import 'package:disneyland_app/widgets/bottom_bar.dart';
import 'package:disneyland_app/widgets/buttons.dart';
import 'package:disneyland_app/widgets/misc_widget.dart';
import 'package:disneyland_app/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  bool isloading = false;
  bool obscureText = true;

  //form key
  final _formKey = GlobalKey<FormState>();

  //controllers
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
                SizedBox(
                  width: 300.w,
                  child: isloading
                      ? loadingWidget()
                      : PrimaryButton(
                          text: 'Login',
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              loginAdmin();
                            }
                          },
                        ),
                ),
              ],
            ),
          ),
        )));
  }

  //login admin
  Future loginAdmin() async {
    try {
      setState(() {
        isloading = true;
      });
      String link = '$baseUrl$auth/admin-login';
      Map<String, dynamic> data = {
        'email': emailController.text,
        'password': passwordController.text,
      };

      var response = await ApiService().postRequest(link, data);

      if (response.statusCode == 200) {
        setState(() {
          isloading = false;
        });
        printLongString(response.body.toString());

        CurrentAdminModel admin = CurrentAdminModel.fromJson(jsonDecode(response.body));

        //setting state for admin
        TokenService.instance.setAdminValue(admin.data.admin);
        //settign token vale
        TokenService.instance.setApiTokenValue(admin.data.token);

        //navigate to admin dashboard
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => BottomBarWidget()));
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
