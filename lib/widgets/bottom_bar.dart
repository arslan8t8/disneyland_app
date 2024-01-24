// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:disneyland_app/services/color_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class BottomBarWidget extends StatefulWidget {
  int? page;

  BottomBarWidget({Key? key, this.page}) : super(key: key);

  @override
  State<BottomBarWidget> createState() => _MainPageState();
}

class _MainPageState extends State<BottomBarWidget> {
  int _selectedIndex = 0;

  void _navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List? _pages;

  @override
  void initState() {
    _pages = [];

    _selectedIndex = widget.page ?? 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: Wrap(
        children: [
          Container(
            height: 70.h,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(0, -4),
                  blurRadius: 15,
                  color: colorBlack.withOpacity(0.10),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.only(topLeft: Radius.circular(15.r), topRight: Radius.circular(15.r)),
              child: BottomNavigationBar(
                backgroundColor: colorWhite,
                elevation: 0,
                selectedLabelStyle: GoogleFonts.montserrat(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                ),
                unselectedLabelStyle: GoogleFonts.montserrat(
                  fontSize: 10.sp,
                  fontWeight: FontWeight.w400,
                ),
                selectedItemColor: colorBlue,
                unselectedItemColor: Color(0xFF8EA0EB),
                currentIndex: _selectedIndex,
                onTap: _navigateBottomBar,
                type: BottomNavigationBarType.fixed,
                items: [
                  BottomNavigationBarItem(icon: Icon(Icons.home, size: 25), label: 'Home'),
                  BottomNavigationBarItem(icon: Icon(Icons.settings, size: 25), label: 'Settings'),
                ],
              ),
            ),
          ),
        ],
      ),
      body: _pages![_selectedIndex],
    );
  }
}
