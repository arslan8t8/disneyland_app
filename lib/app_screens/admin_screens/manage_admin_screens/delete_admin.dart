// ignore_for_file: use_build_context_synchronously

import 'package:disneyland_app/services/api_service.dart';
import 'package:disneyland_app/services/state_service.dart';
import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/utility/constant.dart';
import 'package:disneyland_app/widgets/admin_widgets/delete_admin_widget.dart';
import 'package:disneyland_app/widgets/buttons.dart';
import 'package:disneyland_app/widgets/misc_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class DeleteAdmin extends StatefulWidget {
  final int adminId;
  const DeleteAdmin({super.key, required this.adminId});

  @override
  State<DeleteAdmin> createState() => _DeleteAdminState();
}

class _DeleteAdminState extends State<DeleteAdmin> {
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
            'Are you sure to delete this Admin?',
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
                          deleteAdminFromDb();
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

  //deletting admin
  Future deleteAdminFromDb() async {
    try {
      setState(() {
        isloading = true;
      });

      var admintoDelete = context
          .read<AppStateService>()
          .getAdminById(widget.adminId); //get admin to delete from provider using index
      print(admintoDelete.toJson());
      var adminId = admintoDelete.adminId; //get admin id
      String link = '$baseUrl$admin/delete-admin?id=$adminId';

      print(link);

      var response = await ApiService().deleteRequest(link);

      if (response.statusCode == 200) {
        //delete admin from provider
        context.read<AppStateService>().deleteAdmin(adminId);
        Navigator.pop(context);
        toastWidget(message: 'Admin deleted successfully');
      } else {
        toastWidget(message: 'Error occured, please try again');
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
