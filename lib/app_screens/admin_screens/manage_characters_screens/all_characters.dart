// ignore_for_file: deprecated_member_use

import 'package:disneyland_app/app_screens/admin_screens/manage_characters_screens/add_character.dart';
import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/widgets/admin_widgets/admin_character_widget.dart';
import 'package:disneyland_app/widgets/misc_widget.dart';
import 'package:disneyland_app/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllCharacters extends StatefulWidget {
  const AllCharacters({super.key});

  @override
  State<AllCharacters> createState() => _AllCharactersState();
}

class _AllCharactersState extends State<AllCharacters> {
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
                              GridView.builder(
                                shrinkWrap: true,
                                primary: false,
                                itemCount: 10,
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount:
                                        MediaQuery.of(context).orientation == Orientation.portrait
                                            ? 2
                                            : 3,
                                    childAspectRatio: 0.70.h,
                                    crossAxisSpacing: 10.0,
                                    mainAxisSpacing: 10.0),
                                itemBuilder: (context, index) {
                                  return const AdminCharacterWidget();
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
                  MaterialPageRoute(builder: (context) => const AddCharacter()),
                );
              },
              backgroundColor: primaryColor,
              child: const Icon(Icons.add, color: colorWhite),
            ),
          )),
    );
  }
}
