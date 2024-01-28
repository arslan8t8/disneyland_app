import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/widgets/misc_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DeleteAdminWidget extends StatefulWidget {
  const DeleteAdminWidget({super.key});

  @override
  State<DeleteAdminWidget> createState() => _DeleteAdminWidgetState();
}

class _DeleteAdminWidgetState extends State<DeleteAdminWidget> {
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
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
                            backgroundImage: NetworkImage(
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
                          InkWell(
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
                            '0123456789',
                            softWrap: true,
                            style: TextStyle(
                                color: colorBlack, fontSize: 15.sp, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(width: 30.w),
                          InkWell(
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
              ],
            ),
    );
  }
}
