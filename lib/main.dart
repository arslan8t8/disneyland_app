import 'package:disneyland_app/services/state_service.dart';
import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/app_screens/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AdminStateService()),
      ChangeNotifierProvider(create: (_) => UserStateService()),
      ChangeNotifierProvider(create: (_) => CharacterStateService()),
      ChangeNotifierProvider(create: (_) => SearchState()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: colorWhite,
          primarySwatch: buildMaterialColor(primaryColor),
          fontFamily: GoogleFonts.montserrat().fontFamily,
        ),
        home: const SplashScreen(),
      ),
    );
  }
}
