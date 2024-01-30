// ignore_for_file: deprecated_member_use, use_build_context_synchronously

import 'dart:convert';

import 'package:disneyland_app/app_screens/admin_screens/manage_characters_screens/add_character.dart';
import 'package:disneyland_app/models/character_model/character_model.dart';
import 'package:disneyland_app/services/api_service.dart';
import 'package:disneyland_app/services/state_service.dart';
import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/utility/constant.dart';
import 'package:disneyland_app/widgets/admin_widgets/admin_character_widget.dart';
import 'package:disneyland_app/widgets/misc_widget.dart';
import 'package:disneyland_app/widgets/search_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class AllCharacters extends StatefulWidget {
  const AllCharacters({super.key});

  @override
  State<AllCharacters> createState() => _AllCharactersState();
}

class _AllCharactersState extends State<AllCharacters> {
  bool isloading = false;

  @override
  void initState() {
    getcharacters();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var allcharacters = context.watch<CharacterStateService>().getAllCharacters();
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: primaryColor,
            title: const Text(
              'All Characters',
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
                              GridView.builder(
                                shrinkWrap: true,
                                primary: false,
                                itemCount: allcharacters.length,
                                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount:
                                        MediaQuery.of(context).orientation == Orientation.portrait
                                            ? 2
                                            : 3,
                                    childAspectRatio: 0.70.h,
                                    crossAxisSpacing: 10.0,
                                    mainAxisSpacing: 10.0),
                                itemBuilder: (context, index) {
                                  return AdminCharacterWidget(
                                    character: allcharacters[index],
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
                  MaterialPageRoute(builder: (context) => const AddCharacter()),
                );
              },
              backgroundColor: primaryColor,
              child: const Icon(Icons.add, color: colorWhite),
            ),
          )),
    );
  }

  //backend integration

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
