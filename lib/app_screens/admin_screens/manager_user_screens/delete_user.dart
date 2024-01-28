import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/widgets/admin_widgets/delete_user_widget.dart';
import 'package:disneyland_app/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteUser extends StatefulWidget {
  const DeleteUser({super.key});

  @override
  State<DeleteUser> createState() => _DeleteUserState();
}

class _DeleteUserState extends State<DeleteUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 100.h,
          ),
          const DeleteUserWidget(),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'Are you sure to delete this User?',
            style: TextStyle(color: colorWhite, fontSize: 16.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 30.h,
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
