// ignore_for_file: must_be_immutable

import 'package:disneyland_app/app_screens/admin_screens/manage_user_screens/delete_user.dart';
import 'package:disneyland_app/app_screens/admin_screens/manage_user_screens/update_user.dart';
import 'package:disneyland_app/models/user_model/user_model.dart';
import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/widgets/misc_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

class AdminUserWidget extends StatelessWidget {
  final UserModel user;
  AdminUserWidget({super.key, required this.user});

  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.w, vertical: 5.h),
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(20.r),
        border: Border.all(width: 1, color: colorGray),
        boxShadow: [
          BoxShadow(
            offset: const Offset(4, 4),
            blurRadius: 15,
            color: colorBlack.withOpacity(0.10),
          ),
        ],
      ),
      child: isloading
          ? loadingWidget()
          : Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  width: MediaQuery.of(context).size.width,
                  height: 180.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 25.r,
                            backgroundImage: NetworkImage(user.profileImage),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            user.userName,
                            softWrap: true,
                            style: TextStyle(
                                color: colorBlack, fontSize: 16.sp, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.email,
                            color: primaryColor,
                            size: 20.sp,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            user.email,
                            softWrap: true,
                            style: TextStyle(
                                color: colorBlack, fontSize: 15.sp, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 30.w),
                          InkWell(
                            onTap: () {
                              Clipboard.setData(ClipboardData(text: user.email));
                              toastWidget(message: 'Email copied');
                            },
                            child: const Icon(
                              Icons.copy,
                              color: primaryColor,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 8.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.phone,
                            color: primaryColor,
                            size: 20.sp,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            user.phone,
                            softWrap: true,
                            style: TextStyle(
                                color: colorBlack, fontSize: 15.sp, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 30.w),
                          InkWell(
                            onTap: () {
                              Clipboard.setData(ClipboardData(text: user.phone));
                              toastWidget(message: 'Phone number copied');
                            },
                            child: const Icon(
                              Icons.copy,
                              color: primaryColor,
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 9.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.calendar_month,
                            color: primaryColor,
                            size: 20.sp,
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            DateFormat('dd-MM-yyyy').format(DateTime.parse(user.signUpDate)),
                            softWrap: true,
                            style: TextStyle(
                                color: colorBlack, fontSize: 15.sp, fontWeight: FontWeight.w500),
                          ),
                          const Spacer(),
                          Text('${user.voteCasted} votes casted',
                              softWrap: true,
                              style: TextStyle(
                                  color: colorBlack, fontSize: 15.sp, fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ],
                  ),
                ),
                const Divider(thickness: 1, height: 1, color: colorText),
                SizedBox(height: 7.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => UpdateUser(
                                      user: user,
                                    )));
                      },
                      child: const Icon(
                        Icons.edit,
                        color: primaryColor,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DeleteUser(
                                      userId: user.userId,
                                    )));
                      },
                      child: const Icon(
                        Icons.delete,
                        color: colorRed,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 7.h),
              ],
            ),
    );
  }
}
