import 'dart:convert';

import 'package:disneyland_app/models/graph_model/graph_model.dart';
import 'package:disneyland_app/services/api_service.dart';
import 'package:disneyland_app/utility/constant.dart';
import 'package:disneyland_app/widgets/chart_widgets/character_chart.dart';
import 'package:disneyland_app/widgets/chart_widgets/shift_chart.dart';
import 'package:disneyland_app/widgets/chart_widgets/top_character.dart';
import 'package:disneyland_app/widgets/chart_widgets/total_chart.dart';
import 'package:disneyland_app/widgets/misc_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utility/colors.dart';

class ReportStats extends StatefulWidget {
  const ReportStats({super.key});

  @override
  State<ReportStats> createState() => _ReportStatsState();
}

class _ReportStatsState extends State<ReportStats> {
  List<Color> colors = [
    const Color.fromRGBO(255, 153, 164, 1),
    const Color.fromRGBO(100, 214, 205, 1),
    const Color(0xFFE80054),
    const Color(0xFFFF3AF2),
    const Color(0xFF6E1BFF),
    const Color(0xFF3BFF49),
    const Color(0xFF2196F3),
    const Color(0xFFFFC300)
  ];

  bool isloading = false;

  DashboardData? data;
  List<CharacterVotes> characterVotes = [];
  List<DailyVotes> dailyvotes = [];
  List<Top5Characters> top5 = [];
  List<ShiftVotes> shift = [];
  List<CharacterVotes> shiftCharacter = [];
  List<String> allCharacters = [
    "All",
    "Mickey",
    "Minnie",
    "Briar",
    "Goofy",
    "Cinderella",
    "Donald",
    "Daisy",
    "Eeyore",
    "Cruella",
    "Brer",
    "Rabbit",
    "Cow",
    "Mater",
    "E.D.L.C",
    "F.F.M"
  ];

  ScrollController scrollController = ScrollController();
  ScrollController characaterscrollController = ScrollController();
  ScrollController top5scrollController = ScrollController();
  ScrollController totalscrollController = ScrollController();
  ScrollController yearscrollController = ScrollController();

  List<String> shiftNames = ['Morning', 'Evening', 'Night'];

  List<String> durations = ['All Times', 'Last 30 days', 'Lat 60 days', 'Lat 90 days'];

  String selectedDuration = 'All Times';

  String selectedShift = 'Morning';

  String selectedCharacater = "All";

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          'Voting Stats',
          style: TextStyle(color: colorWhite),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.all(10.0.w),
              child: SingleChildScrollView(
                  child: Column(
                children: [
                  SizedBox(height: 25.h),
                  //total graph
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 550.h,
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(20.r),
                      border: Border.all(width: 0.5, color: colorGray),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 4),
                          blurRadius: 15,
                          color: colorBlack.withOpacity(0.1),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: Column(
                        children: [
                          SizedBox(height: 25.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                ' Total Votes',
                                style: TextStyle(
                                    fontSize: 16.sp, fontWeight: FontWeight.w500, color: colorText1),
                              ),
                              Text(
                                'Select Character ',
                                style: TextStyle(
                                    fontSize: 14.sp, fontWeight: FontWeight.w500, color: colorText1),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(),
                              DropdownButton(
                                iconDisabledColor: colorBlue,
                                iconEnabledColor: colorBlue,
                                value: selectedCharacater,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedCharacater = newValue!;
                                  });
                                  getvotesByCharacter(newValue!);
                                },
                                items: allCharacters.map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value.toString(),
                                    child: Text(
                                      value.toString(),
                                      style: GoogleFonts.montserrat(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          color: colorText2),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          ScrollbarTheme(
                            data: ScrollbarThemeData(
                              thickness: MaterialStateProperty.all(6.0),
                              trackColor: MaterialStateProperty.all<Color>(Colors.blue),
                            ),
                            child: Scrollbar(
                              controller: totalscrollController,
                              thumbVisibility: true,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                controller: totalscrollController,
                                child: Column(
                                  children: [
                                    isloading
                                        ? SizedBox(height: 380.h, width: 300.w, child: loadingWidget())
                                        : SizedBox(
                                            height: 410.h,
                                            width: dailyvotes.length * 32.w,
                                            child: TotalChart(dailyvotes: dailyvotes)),
                                    SizedBox(height: 10.h),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25.h),
                  //character graph
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 540.h,
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(20.r),
                      border: Border.all(width: 0.5, color: colorGray),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 4),
                          blurRadius: 15,
                          color: colorBlack.withOpacity(0.1),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(
                        children: [
                          SizedBox(height: 25.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '   Character Votes',
                                style: TextStyle(
                                    fontSize: 16.sp, fontWeight: FontWeight.w500, color: colorText1),
                              ),
                              Text(
                                'Select duration ',
                                style: TextStyle(
                                    fontSize: 14.sp, fontWeight: FontWeight.w500, color: colorText1),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(),
                              DropdownButton(
                                iconDisabledColor: colorBlue,
                                iconEnabledColor: colorBlue,
                                value: selectedDuration,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedDuration = newValue!;
                                  });
                                  getvotesByCharacter(newValue!);
                                },
                                items: durations.map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value.toString(),
                                    child: Text(
                                      value.toString(),
                                      style: GoogleFonts.montserrat(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          color: colorText2),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                          ScrollbarTheme(
                            data: ScrollbarThemeData(
                              thickness: MaterialStateProperty.all(6.0),
                              trackColor: MaterialStateProperty.all<Color>(Colors.blue),
                            ),
                            child: Scrollbar(
                              controller: characaterscrollController,
                              thumbVisibility: true,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                controller: characaterscrollController,
                                child: Column(
                                  children: [
                                    isloading
                                        ? SizedBox(height: 380.h, width: 300.w, child: loadingWidget())
                                        : characterVotes.isEmpty
                                            ? SizedBox(
                                                height: 300.h,
                                                width: 300.w,
                                                child: const Center(
                                                  child: Text('No Data'),
                                                ),
                                              )
                                            : SizedBox(
                                                height: 380.h,
                                                width: characterVotes.length * 70.w,
                                                child: CharacterChart(charactervotes: characterVotes),
                                              ),
                                    SizedBox(height: 10.h),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25.h),
                  //top 5 graph
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 500.h,
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(20.r),
                      border: Border.all(width: 0.5, color: colorGray),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 4),
                          blurRadius: 15,
                          color: colorBlack.withOpacity(0.1),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(
                        children: [
                          SizedBox(height: 25.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'TOP 5 Character',
                                style: TextStyle(
                                    fontSize: 16.sp, fontWeight: FontWeight.w500, color: colorText1),
                              ),
                            ],
                          ),
                          ScrollbarTheme(
                            data: ScrollbarThemeData(
                              thickness: MaterialStateProperty.all(6.0),
                              trackColor: MaterialStateProperty.all<Color>(Colors.blue),
                            ),
                            child: Scrollbar(
                              controller: top5scrollController,
                              thumbVisibility: true,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                controller: top5scrollController,
                                child: Column(
                                  children: [
                                    isloading
                                        ? SizedBox(height: 380.h, width: 300.w, child: loadingWidget())
                                        : top5.isEmpty
                                            ? SizedBox(
                                                height: 300.h,
                                                width: 300.w,
                                                child: const Center(
                                                  child: Text('No Data'),
                                                ),
                                              )
                                            : SizedBox(
                                                height: 380.h,
                                                width: characterVotes.length * 30.w,
                                                child: TOPCharacterChart(topcharactervotes: top5),
                                              ),
                                    SizedBox(height: 10.h),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25.h),
                  //shift votes
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 540.h,
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(20.r),
                      border: Border.all(width: 0.5, color: colorGray),
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 4),
                          blurRadius: 15,
                          color: colorBlack.withOpacity(0.1),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 25.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Shift Votes',
                                style: TextStyle(
                                    fontSize: 16.sp, fontWeight: FontWeight.w500, color: colorText1),
                              ),
                              Text(
                                'Select Shift ',
                                style: TextStyle(
                                    fontSize: 14.sp, fontWeight: FontWeight.w500, color: colorText1),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '   ',
                                style: TextStyle(
                                    fontSize: 16.sp, fontWeight: FontWeight.w700, color: colorText1),
                              ),
                              DropdownButton(
                                iconDisabledColor: colorBlue,
                                iconEnabledColor: colorBlue,
                                value: selectedShift,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedShift = newValue!;
                                  });
                                  getvotesByShift(newValue!);
                                },
                                items: shiftNames.map<DropdownMenuItem<String>>((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value.toString(),
                                    child: Text(
                                      value.toString(),
                                      style: GoogleFonts.montserrat(
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w500,
                                          color: colorText2),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                          SizedBox(height: 15.h),
                          ScrollbarTheme(
                            data: ScrollbarThemeData(
                              thickness: MaterialStateProperty.all(6.0),
                              trackColor: MaterialStateProperty.all<Color>(Colors.blue),
                            ),
                            child: Scrollbar(
                              controller: yearscrollController,
                              thumbVisibility: true,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                controller: yearscrollController,
                                child: Column(
                                  children: [
                                    isloading
                                        ? SizedBox(height: 300.h, width: 300.w, child: loadingWidget())
                                        : shiftCharacter.isEmpty
                                            ? SizedBox(
                                                height: 300.h,
                                                width: 300.w,
                                                child: const Center(
                                                  child: Text('No Data'),
                                                ),
                                              )
                                            : SizedBox(
                                                height: 380.h,
                                                width: shiftCharacter.length * 70.w,
                                                child: ShiftChart(shift: shiftCharacter)),
                                    SizedBox(height: 10.h),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              )))),
    );
  }

//getting all stats
  Future getData() async {
    try {
      setState(() {
        isloading = true;
      });

      String link =
          'https://disneyland.wardrobesetc.com/api/Stats/admin-graph'; //'$baseUrl$statsEndpoint/admin-graph';

      var response = await ApiService().getRequest(link);

      if (response.statusCode == 200) {
        data = DashboardData.fromJson(jsonDecode(response.body));

        setState(() {
          dailyvotes = data!.data!.dailyvotes!;
          characterVotes = data!.data!.characterVotes!;
          top5 = data!.data!.top5Characters!;
          shift = data!.data!.shiftVotes!;

          var morningdata = shift.where((element) => element.shift == 'Morning').toList();

          shiftCharacter = morningdata.expand((shiftVote) => shiftVote.characters!).toList();
        });

        print(shiftCharacter.length);
      } else {
        printLongString(response.body.toString());
        //show toast message
        toastWidget(message: 'Error occured, please try again');
      }
    } catch (ex) {
      print(ex.toString());
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

  //getting data by shift Morning, Evening, Night

  Future getvotesByShift(String s) async {
    try {
      setState(() {
        isloading = true;
      });

      String link = 'https://disneyland.wardrobesetc.com/api/Stats/total-votes-by-shift?shift=$s';

      var response = await ApiService().getRequest(link);

      if (response.statusCode == 200) {
        var charvotes = jsonDecode(response.body)['data'];

        List<CharacterVotes> shiftvotes =
            charvotes.map<CharacterVotes>((json) => CharacterVotes.fromJson(json)).toList();

        setState(() {
          shiftCharacter = shiftvotes;
        });
      } else {
        printLongString(response.body.toString());
        //show toast message
        toastWidget(message: 'Error occured, please try again');
      }
    } catch (ex) {
      print(ex.toString());
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

  //getting votes by character

  Future getvotesByCharacter(String s) async {
    try {
      setState(() {
        isloading = true;
      });
      String link = 'https://disneyland.wardrobesetc.com/api/Stats/total-votes-by-character?name=$s';

      var response = await ApiService().getRequest(link);

      if (response.statusCode == 200) {
        printLongString(response.body.toString());
        var charvotes = jsonDecode(response.body)['data'];

        List<DailyVotes> charactervotes =
            charvotes.map<CharacterVotes>((json) => CharacterVotes.fromJson(json)).toList();

        setState(() {
          dailyvotes = charactervotes;
        });
      } else {
        printLongString(response.body.toString());
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
