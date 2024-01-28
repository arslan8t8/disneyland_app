// ignore_for_file: deprecated_member_use

import 'package:disneyland_app/app_screens/admin_screens/manager_user_screens/add_user.dart';
import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/widgets/admin_widgets/admin_user_widget.dart';
import 'package:disneyland_app/widgets/misc_widget.dart';
import 'package:disneyland_app/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllUsers extends StatefulWidget {
  const AllUsers({super.key});

  @override
  State<AllUsers> createState() => _AllUsersState();
}

class _AllUsersState extends State<AllUsers> {
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          body: SafeArea(
            child: Column(
              children: [
                SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 70.h,
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30.r),
                            bottomRight: Radius.circular(30.r),
                          ),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(0, 0),
                              blurRadius: 20,
                              color: color1,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                Container(
                                    decoration: BoxDecoration(
                                      color: colorWhite,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    width: 265.w,
                                    height: 50.h,
                                    child: const SearchWidget()),
                              ]),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 15.h),
                    ],
                  ),
                ),
                isloading
                    ? loadingWidget()
                    : Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
                          child: SingleChildScrollView(
                              child: Column(
                            children: [
                              ListView.builder(
                                shrinkWrap: true,
                                primary: false,
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return const AdminUserWidget();
                                },
                              ),
                              SizedBox(height: 90.h)
                            ],
                          )),
                        ),
                      ),
              ],
            ),
          ),
          floatingActionButton: Padding(
            padding: EdgeInsets.only(bottom: 60.h),
            child: FloatingActionButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AddUser()),
                );
              },
              backgroundColor: primaryColor,
              child: const Icon(Icons.add, color: colorWhite),
            ),
          )),
    );
  }
}
