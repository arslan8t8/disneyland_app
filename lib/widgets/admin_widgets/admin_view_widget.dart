import 'package:disneyland_app/app_screens/admin_screens/manage_admin_screens/delete_admin.dart';
import 'package:disneyland_app/app_screens/admin_screens/manage_admin_screens/update_admin.dart';
import 'package:disneyland_app/services/color_service.dart';
import 'package:disneyland_app/widgets/misc_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminViewWidget extends StatefulWidget {
  const AdminViewWidget({super.key});

  @override
  State<AdminViewWidget> createState() => _AdminViewWidgetState();
}

class _AdminViewWidgetState extends State<AdminViewWidget> {
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
                            backgroundImage: const NetworkImage(
                                'https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png'),
                          ),
                          SizedBox(width: 10.w),
                          Text(
                            'Admin Name',
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
                            'demo@demo.com',
                            softWrap: true,
                            style: TextStyle(
                                color: colorBlack, fontSize: 15.sp, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 30.w),
                          const InkWell(
                            child: Icon(
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
                            '0123456789',
                            softWrap: true,
                            style: TextStyle(
                                color: colorBlack, fontSize: 15.sp, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 30.w),
                          const InkWell(
                            child: Icon(
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
                            '25 Jan 2023',
                            softWrap: true,
                            style: TextStyle(
                                color: colorBlack, fontSize: 15.sp, fontWeight: FontWeight.w500),
                          ),
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
                            context, MaterialPageRoute(builder: (context) => const UpdateAdmin()));
                      },
                      child: const Icon(
                        Icons.edit,
                        color: primaryColor,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => const DeleteAdmin()));
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
