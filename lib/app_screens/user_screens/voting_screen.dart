// ignore_for_file: deprecated_member_use

import 'package:disneyland_app/app_screens/choose.dart';
import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/widgets/character_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VotingScreen extends StatefulWidget {
  const VotingScreen({super.key});

  @override
  State<VotingScreen> createState() => _VotingScreenState();
}

class _VotingScreenState extends State<VotingScreen> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            title: const Text(
              'Disneyland Characters',
              style: TextStyle(color: colorWhite),
            ),
            centerTitle: true,
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context, MaterialPageRoute(builder: (context) => const UserChoice()));
                  },
                  icon: const Icon(
                    Icons.logout_outlined,
                    color: colorWhite,
                  ))
            ],
          ),
          body: SafeArea(
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
                      crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 3,
                      childAspectRatio: 0.80.h,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0),
                  itemBuilder: (context, index) {
                    return const CharacterWidget();
                  },
                ),
              ],
            )),
          ))),
    );
  }
}
