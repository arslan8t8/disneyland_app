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
  bool isweeklyloading = false;
  bool ismonthlyloading = false;
  bool isyearlyloading = false;
  // UserDetail? user = TokenService.instance.value.user.value!;
  // DashBoardData? data;
  // DashBoardGraphModel? graphData;
  // List<MonthlySale> monthlySale = [];
  // List<YearlySale> yearlySale = [];

  ScrollController scrollController = ScrollController();
  ScrollController yearscrollController = ScrollController();

  int _selectedYear = DateTime.now().year;

  final List<int> _yearS = [DateTime.now().year, DateTime.now().year + 1, DateTime.now().year + 2];
  int _selectedYear2 = DateTime.now().year;

  final List<int> _yearS2 = [DateTime.now().year, DateTime.now().year + 1, DateTime.now().year + 2];
  int _selectedYear3 = DateTime.now().year;
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 450.h,
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
                                '    Weekly sales',
                                style: TextStyle(
                                    fontSize: 16.sp, fontWeight: FontWeight.w700, color: colorText1),
                              ),
                            ],
                          ),
                          SizedBox(height: 15.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '   AED',
                                style: TextStyle(
                                    fontSize: 16.sp, fontWeight: FontWeight.w700, color: colorText1),
                              ),
                            ],
                          ),
                          SizedBox(height: 25.h),
                          SizedBox(
                              height: 340.h,
                              child: isweeklyloading
                                  ? Center(
                                      child: loadingWidget(),
                                    )
                                  : Container() //WeeklyChart(weeklysale: graphData!.data.dailySale),
                              )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 25.h),
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Monthly sales',
                                style: TextStyle(
                                    fontSize: 16.sp, fontWeight: FontWeight.w500, color: colorText1),
                              ),
                              Text(
                                'Select Year',
                                style: TextStyle(
                                    fontSize: 14.sp, fontWeight: FontWeight.w500, color: colorText1),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                '   AED',
                                style: TextStyle(
                                    fontSize: 16.sp, fontWeight: FontWeight.w700, color: colorText1),
                              ),
                              DropdownButton(
                                iconDisabledColor: colorBlue,
                                iconEnabledColor: colorBlue,
                                value: _selectedYear.toString(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _selectedYear = int.parse(newValue!);
                                  });
                                  //getdataByYear(_selectedYear);
                                },
                                items: _yearS.map<DropdownMenuItem<String>>((int value) {
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
                          ScrollbarTheme(
                            data: ScrollbarThemeData(
                              thickness: MaterialStateProperty.all(6.0),
                              trackColor: MaterialStateProperty.all<Color>(Colors.blue),
                            ),
                            child: Scrollbar(
                              controller: scrollController,
                              thumbVisibility: true,
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                controller: scrollController,
                                child: Column(
                                  children: [
                                    ismonthlyloading
                                        ? SizedBox(height: 380.h, width: 300.w, child: loadingWidget())
                                        : SizedBox(
                                            height: 380.h,
                                            width: 600.w,
                                            child:
                                                Container(), // MonthlyChart(monthlySale: monthlySale),
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
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 530.h,
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
                          Text(
                            'Month on Month trend',
                            style: TextStyle(
                                fontSize: 16.sp, fontWeight: FontWeight.w500, color: colorText1),
                          ),
                          SizedBox(height: 25.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Select From Year',
                                style: TextStyle(
                                    fontSize: 14.sp, fontWeight: FontWeight.w500, color: colorText1),
                              ),
                              Text(
                                'Select To Year',
                                style: TextStyle(
                                    fontSize: 14.sp, fontWeight: FontWeight.w500, color: colorText1),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              DropdownButton(
                                iconDisabledColor: colorBlue,
                                iconEnabledColor: colorBlue,
                                value: _selectedYear2.toString(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _selectedYear2 = int.parse(newValue!);
                                  });

                                  if (_selectedYear2 <= _selectedYear3) {
                                    //getdataByYeartoYear();
                                  }
                                },
                                items: _yearS.map<DropdownMenuItem<String>>((int value) {
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
                              DropdownButton(
                                iconDisabledColor: colorBlue,
                                iconEnabledColor: colorBlue,
                                value: _selectedYear3.toString(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    _selectedYear3 = int.parse(newValue!);
                                  });

                                  if (_selectedYear2 <= _selectedYear3) {
                                    //getdataByYeartoYear();
                                  }
                                },
                                items: _yearS2.map<DropdownMenuItem<String>>((int value) {
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
                          SizedBox(height: 5.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                '   AED',
                                style: TextStyle(
                                    fontSize: 16.sp, fontWeight: FontWeight.w700, color: colorText1),
                              ),
                            ],
                          ),
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
                                    isyearlyloading
                                        ? SizedBox(height: 300.h, width: 300.w, child: loadingWidget())
                                        : SizedBox(
                                            height: 300.h,
                                            width: 1000.w,
                                            child:
                                                Container(), // YearlyChart(yeartoYearsale: yearlySale),
                                          ),
                                    SizedBox(height: 10.h),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 15.h),
                          // Padding(
                          //   padding: EdgeInsets.only(left: 30.w),
                          //   child: Row(
                          //     mainAxisAlignment: MainAxisAlignment.center,
                          //     children: yearlySale.asMap().entries.map((e) {
                          //       final year = e.value.year;
                          //       final yearColor = colors[e.key % colors.length];
                          //       return SizedBox(
                          //         width: 60.w,
                          //         child: Row(
                          //           mainAxisAlignment: MainAxisAlignment.start,
                          //           children: [
                          //             Icon(Icons.square, color: yearColor, size: 15.h),
                          //             Text(
                          //               year.toString(),
                          //             )
                          //           ],
                          //         ),
                          //       );
                          //     }).toList(),
                          //   ),
                          // )
                        ],
                      ),
                    ),
                  ),
                ],
              )))),
    );
  }

//   //getting dashboard data

//   Future getData() async {
//     try {
//       setState(() {
//         isloading = true;
//       });

//       String link = '$baseUrl$dashboard/get-dashboard-data?userId=${user!.userId!}';

//       var response = await ApiService().getRequest(link);

//       if (response.statusCode == 200) {
//         printLongString(response.body);
//         data = DashBoardData.fromJson(jsonDecode(response.body));
//         //printLongString(data.toString());
//       } else {
//         printLongString(response.body);
//         toastWidget(message: 'Error occured, please try again');
//       }
//     } catch (ex) {
//       printLongString(ex.toString());
//       setState(() {
//         isloading = false;
//       });
//       //show toast message
//       toastWidget(message: 'Error occured, please try again');
//     } finally {
//       isloading = false;
//       setState(() {});
//     }
//   }

//   //getting graph data
//   Future dashboardGraphData() async {
//     try {
//       setState(() {
//         isweeklyloading = true;
//         ismonthlyloading = true;
//         isyearlyloading = true;
//       });
//       String link =
//           '$baseUrl$dashboard/get-graphdata-onload?year=${DateTime.now().year}&fromyear=${DateTime.now().year}&toyear=${DateTime.now().year}&userId=${user!.userId!}';

//       var response = await ApiService().getRequest(link);

//       if (response.statusCode == 200) {
//         //printLongString(response.body);
//         graphData = DashBoardGraphModel.fromJson(jsonDecode(response.body));

//         monthlySale = graphData!.data.monthlySale;
//         yearlySale = graphData!.data.yeartoYearSale;
//         //printLongString(graphData.toString());
//       } else {
//         printLongString(response.body);
//         toastWidget(message: 'Error occured, please try again');
//       }
//     } catch (ex) {
//       printLongString(ex.toString());
//       setState(() {
//         isweeklyloading = false;
//         ismonthlyloading = false;
//         isyearlyloading = false;
//       });
//       //show toast message
//       toastWidget(message: 'Error occured, please try again');
//     } finally {
//       isweeklyloading = false;
//       ismonthlyloading = false;
//       isyearlyloading = false;
//       setState(() {});
//     }
//   }

//   //getting data by year
//   Future getdataByYear(int selectedYear) async {
//     try {
//       setState(() {
//         ismonthlyloading = true;
//       });
//       String link =
//           '$baseUrl$dashboard/get-graphdata-by-year?year=$selectedYear&userId=${user!.userId!}';

//       var response = await ApiService().getRequest(link);

//       if (response.statusCode == 200) {
//         //printLongString(response.body);
//         var data = jsonDecode(response.body) as List;
//         monthlySale = data.map((e) => MonthlySale.fromJson(e)).toList();
//         printLongString(monthlySale.toString());
//       } else {
//         printLongString(response.body);
//         toastWidget(message: 'Error occured, please try again');
//       }
//     } catch (ex) {
//       printLongString(ex.toString());
//       setState(() {
//         ismonthlyloading = false;
//       });
//       //show toast message
//       toastWidget(message: 'Error occured, please try again');
//     } finally {
//       ismonthlyloading = false;
//       setState(() {});
//     }
//   }

// //getting data range by year to year
//   Future getdataByYeartoYear() async {
//     try {
//       setState(() {
//         isyearlyloading = true;
//       });
//       String link =
//           '$baseUrl$dashboard/get-graphdata-by-year-range?fromyear=$_selectedYear2&toyear=$_selectedYear3&userId=${user!.userId!}';

//       var response = await ApiService().getRequest(link);
//       if (response.statusCode == 200) {
//         //var data = jsonDecode(response.body) as List;
//         YearlySaleData data = YearlySaleData.fromJson(jsonDecode(response.body));
//         yearlySale = data.data.yeartoYearSale;
//         printLongString(yearlySale.toString());
//       }
//     } catch (ex) {
//       setState(() {
//         isyearlyloading = false;
//       });
//       //show toast message
//       toastWidget(message: 'Error occured, please try again');
//     } finally {
//       isyearlyloading = false;
//       setState(() {});
//     }
//   }
}
