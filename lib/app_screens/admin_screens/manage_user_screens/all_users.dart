// ignore_for_file: deprecated_member_use, use_build_context_synchronously

import 'dart:convert';

import 'package:disneyland_app/app_screens/admin_screens/manage_user_screens/add_user.dart';
import 'package:disneyland_app/models/user_model/user_model.dart';
import 'package:disneyland_app/services/api_service.dart';
import 'package:disneyland_app/services/state_service.dart';
import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/utility/constant.dart';
import 'package:disneyland_app/widgets/admin_widgets/admin_user_widget.dart';
import 'package:disneyland_app/widgets/misc_widget.dart';
import 'package:disneyland_app/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class AllUsers extends StatefulWidget {
  const AllUsers({super.key});

  @override
  State<AllUsers> createState() => _AllUsersState();
}

class _AllUsersState extends State<AllUsers> {
  bool isloading = false;

  @override
  void initState() {
    getAllUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var allusers = context.watch<UserStateService>().getAllUsers();
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            title: const Text(
              'All Users',
              style: TextStyle(color: colorWhite),
            ),
            centerTitle: true,
            //disable back button
            automaticallyImplyLeading: false,
          ),
          body: SafeArea(
            child: Column(
              children: [
                // SingleChildScrollView(
                //   child: Column(
                //     children: [
                //       Container(
                //         width: MediaQuery.of(context).size.width,
                //         height: 70.h,
                //         decoration: BoxDecoration(
                //           color: primaryColor,
                //           borderRadius: BorderRadius.only(
                //             bottomLeft: Radius.circular(30.r),
                //             bottomRight: Radius.circular(30.r),
                //           ),
                //           boxShadow: const [
                //             BoxShadow(
                //               offset: Offset(0, 0),
                //               blurRadius: 20,
                //               color: color1,
                //             ),
                //           ],
                //         ),
                //         child: Padding(
                //           padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
                //           child: Column(
                //             crossAxisAlignment: CrossAxisAlignment.start,
                //             children: [
                //               Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                //                 Container(
                //                     decoration: BoxDecoration(
                //                       color: colorWhite,
                //                       borderRadius: BorderRadius.circular(10.0),
                //                     ),
                //                     width: 265.w,
                //                     height: 50.h,
                //                     child: const SearchWidget()),
                //               ]),
                //             ],
                //           ),
                //         ),
                //       ),
                //       SizedBox(height: 15.h),
                //     ],
                //   ),
                // ),
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
                                itemCount: allusers.length,
                                itemBuilder: (context, index) {
                                  return AdminUserWidget(
                                    user: allusers[index],
                                  );
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

  //backend code

  Future getAllUsers() async {
    try {
      setState(() {
        isloading = true;
      });

      String link = '$baseUrl$usersEndpoint/all-users';
      var response = await ApiService().getRequest(link);

      if (response.statusCode == 200) {
        printLongString(response.body);
        AllUsersModel allUsersModel = AllUsersModel.fromJson(jsonDecode(response.body));
        context.read<UserStateService>().setAllUsers(allUsersModel.data);
      } else {
        printLongString(response.body);
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
