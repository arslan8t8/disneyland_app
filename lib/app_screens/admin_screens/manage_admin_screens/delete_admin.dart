import 'package:disneyland_app/services/color_service.dart';
import 'package:disneyland_app/widgets/admin_widgets/delete_admin_widget.dart';
import 'package:disneyland_app/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteAdmin extends StatefulWidget {
  const DeleteAdmin({super.key});

  @override
  State<DeleteAdmin> createState() => _DeleteAdminState();
}

class _DeleteAdminState extends State<DeleteAdmin> {
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
          const DeleteAdminWidget(),
          SizedBox(
            height: 20.h,
          ),
          Text(
            'Are you sure to delete this Admin?',
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
