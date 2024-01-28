import 'package:disneyland_app/services/api_service.dart';
import 'package:disneyland_app/services/state_service.dart';
import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/utility/constant.dart';
import 'package:disneyland_app/widgets/admin_widgets/delete_user_widget.dart';
import 'package:disneyland_app/widgets/buttons.dart';
import 'package:disneyland_app/widgets/misc_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class DeleteUser extends StatefulWidget {
  final int userId;
  const DeleteUser({super.key, required this.userId});

  @override
  State<DeleteUser> createState() => _DeleteUserState();
}

class _DeleteUserState extends State<DeleteUser> {
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(child: Container()),
          Text(
            'Are you sure to delete this User?',
            style: TextStyle(color: colorWhite, fontSize: 16.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 30.h,
          ),
          isloading
              ? loadingWidget()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 100.w,
                      child: PrimaryButton(
                        color: colorRed,
                        text: 'Yes',
                        onPressed: () {
                          deleteUserFromdb();
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

  //backend logic

  Future deleteUserFromdb() async {
    try {
      setState(() {
        isloading = true;
      });

      String link = '$baseUrl$usersEndpoint/delete-user?id=${widget.userId}';

      print(link);

      var response = await ApiService().deleteRequest(link);

      if (response.statusCode == 200) {
        //delete admin from provider
        context.read<UserStateService>().deleteUser(widget.userId);
        Navigator.pop(context);
        toastWidget(message: 'user deleted successfully');
      } else {
        toastWidget(message: 'Error occured, please try again');
      }
    } catch (ex) {
      printLongString(ex.toString());
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
