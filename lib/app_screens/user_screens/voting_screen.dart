// ignore_for_file: deprecated_member_use, use_build_context_synchronously

import 'dart:convert';

import 'package:disneyland_app/app_screens/choose.dart';
import 'package:disneyland_app/models/character_model/character_model.dart';
import 'package:disneyland_app/services/api_service.dart';
import 'package:disneyland_app/services/state_service.dart';
import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/utility/constant.dart';
import 'package:disneyland_app/widgets/character_widget.dart';
import 'package:disneyland_app/widgets/misc_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class VotingScreen extends StatefulWidget {
  const VotingScreen({super.key});

  @override
  State<VotingScreen> createState() => _VotingScreenState();
}

class _VotingScreenState extends State<VotingScreen> {
  bool isloading = false;
  @override
  void initState() {
    getcharacters();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var allcahracters = context.watch<CharacterStateService>().getAllCharacters();
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
                  onPressed: () async {
                    SharedPreferences prefs = await SharedPreferences.getInstance();
                    await prefs.clear();
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
                  itemCount: allcahracters.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: MediaQuery.of(context).orientation == Orientation.portrait ? 2 : 3,
                      childAspectRatio: 0.80.h,
                      crossAxisSpacing: 10.0,
                      mainAxisSpacing: 10.0),
                  itemBuilder: (context, index) {
                    return CharacterWidget(
                      character: allcahracters[index],
                    );
                  },
                ),
              ],
            )),
          ))),
    );
  }

  //getting characters from api
  Future getcharacters() async {
    try {
      setState(() {
        isloading = true;
      });
      String link = '$baseUrl$disneylandEndPoint/disneyland-characters';
      var response = await ApiService().getRequest(link);
      if (response.statusCode == 200) {
        printLongString(response.body);
        CharacterData characterData = CharacterData.fromJson(jsonDecode(response.body));
        //set state
        Provider.of<CharacterStateService>(context, listen: false).setAllCharacters(characterData.data);
      } else {
        //show toast message
        toastWidget(message: 'Error occured, please try again');
      }
    } catch (ex) {
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
