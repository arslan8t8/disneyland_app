import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/widgets/buttons.dart';
import 'package:disneyland_app/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AddUser extends StatefulWidget {
  const AddUser({super.key});

  @override
  State<AddUser> createState() => _AddUserState();
}

class _AddUserState extends State<AddUser> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          'Add New User',
          style: TextStyle(color: colorWhite),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
            child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30.h,
              ),
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
                      icon:
                          obscureText ? const Icon(Icons.visibility_off) : const Icon(Icons.visibility),
                    ),
                  )),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 150.h,
                width: 150.w,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: colorWhite,
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png'),
                      fit: BoxFit.cover),
                ),
                child: const Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          child: Icon(
                            Icons.camera_alt,
                            color: colorBlack,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(width: 300.w, child: PrimaryButton(text: 'Add User', onPressed: () {}))
            ],
          ),
        )),
      )),
    );
  }
}
