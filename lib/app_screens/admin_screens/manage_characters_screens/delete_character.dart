import 'package:disneyland_app/services/color_service.dart';
import 'package:disneyland_app/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteCharacter extends StatefulWidget {
  const DeleteCharacter({super.key});

  @override
  State<DeleteCharacter> createState() => _DeleteCharacterState();
}

class _DeleteCharacterState extends State<DeleteCharacter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(child: Container()),
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
          ),
          SizedBox(
            height: 30.h,
          ),
          Text(
            'Are you sure to delete this character?',
            style: TextStyle(color: colorWhite, fontSize: 16.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 50.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 100.w,
                child: PrimaryButton(
                  color: colorRed,
                  text: 'Yes',
                  onPressed: () {
                    //TODO implement backend logic
                  },
                ),
              ),
              SizedBox(
                width: 100.w,
                child: PrimaryButton(
                  color: Colors.green,
                  text: 'No',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
          Expanded(child: Container())
        ],
      )),
    );
  }
}
