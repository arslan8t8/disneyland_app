import 'package:disneyland_app/services/color_service.dart';
import 'package:disneyland_app/widgets/buttons.dart';
import 'package:disneyland_app/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UpdateCharacter extends StatefulWidget {
  const UpdateCharacter({super.key});

  @override
  State<UpdateCharacter> createState() => _UpdateCharacterState();
}

class _UpdateCharacterState extends State<UpdateCharacter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          'Update Disneyland Character',
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
                  text: 'Character Name',
                  validate: true,
                  errorTxt: 'Please enter a valid name',
                  prefixIcon: const Icon(
                    Icons.star,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                width: 300.w,
                child: TextFieldWidget(
                  text: 'description',
                  maxlines: 10,
                  minlines: 3,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                height: 300.h,
                width: 200.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.r),
                  color: colorWhite,
                  image: const DecorationImage(
                      image: NetworkImage(
                          'https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png'),
                      fit: BoxFit.cover),
                ),
                child: const Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
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
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              SizedBox(width: 300.w, child: PrimaryButton(text: 'Update Character', onPressed: () {}))
            ],
          ),
        )),
      )),
    );
  }
}
