// ignore_for_file: use_build_context_synchronously

import 'package:disneyland_app/app_screens/user_screens/reset_password.dart';
import 'package:disneyland_app/services/api_service.dart';
import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/utility/constant.dart';
import 'package:disneyland_app/widgets/buttons.dart';
import 'package:disneyland_app/widgets/misc_widget.dart';
import 'package:disneyland_app/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ForgotPasswordAdmin extends StatefulWidget {
  const ForgotPasswordAdmin({super.key});

  @override
  State<ForgotPasswordAdmin> createState() => _ForgotPasswordAdminState();
}

class _ForgotPasswordAdminState extends State<ForgotPasswordAdmin> {
  TextEditingController emailController = TextEditingController();
  bool isloading = false;
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
            child: isloading
                ? loadingWidget()
                : PrimaryButton(
                    text: 'Reset Password',
                    onPressed: () {
                      if (emailController.text.isEmpty) {
                        toastWidget(message: 'Please enter your email');
                      } else {
                        resetPassword();
                      }
                    },
                  ),
          ),
        ],
      )),
    );
  }

  Future resetPassword() async {
    try {
      setState(() {
        isloading = true;
      });

      String link = '$baseUrl$adminEndpoint/forgot-password-admin?email=${emailController.text}';

      var response = await ApiService().postcall(link);

      if (response.statusCode == 200) {
        setState(() {
          isloading = false;
        });
        toastWidget(message: 'Password reset code sent to your email');
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ResetPassword(
                      email: emailController.text,
                    )));
      } else {
        setState(() {
          isloading = false;
        });
        toastWidget(message: 'Error occured, please try again');
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
