import 'package:disneyland_app/services/color_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  Color? color;

  final VoidCallback onPressed;

  PrimaryButton({Key? key, required this.text, required this.onPressed, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 15,
            color: colorBlack.withOpacity(0.10),
          ),
        ],
      ),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: color ?? color1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        child: Text(
          text,
          style: GoogleFonts.montserrat(
            fontSize: 14.sp,
            fontWeight: FontWeight.w600,
            color: colorWhite,
          ),
        ),
      ),
    );
  }
}

class ManagementButton extends StatelessWidget {
  final String text;
  final String icon;
  final VoidCallback onPressed;

  const ManagementButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 15,
            color: colorBlack.withOpacity(0.10),
          ),
        ],
      ),
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          backgroundColor: colorWhite,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon, scale: 0.9),
            Text(
              text,
              style: GoogleFonts.montserrat(
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
                color: colorBlue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SmallButton extends StatelessWidget {
  final String text;
  final Color textColor;
  final Color buttonColor;

  final VoidCallback onPressed;

  const SmallButton({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.textColor,
    required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        backgroundColor: buttonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.r),
        ),
      ),
      child: Text(
        text,
        style: GoogleFonts.roboto(
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
          color: textColor,
        ),
      ),
    );
  }
}

class FacebookButton extends StatelessWidget {
  final Function onTap;
  const FacebookButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: Color(0xFF42629D),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 15,
              color: colorBlack.withOpacity(0.12),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/fb.png', scale: 5),
            SizedBox(width: 10.w),
            Text(
              'Continue with Facebook',
              style: TextStyle(
                color: colorWhite,
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GoogleButton extends StatelessWidget {
  final Function onTap;
  const GoogleButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: Color(0xFF2582F3),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 15,
              color: colorBlack.withOpacity(0.12),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/google.png', scale: 5),
            SizedBox(width: 10.w),
            Text(
              'Continue with Google',
              style: TextStyle(
                color: colorWhite,
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class EmailButton extends StatelessWidget {
  final Function onTap;
  final String text;
  final Color color;
  final Icon icon;
  const EmailButton(
      {super.key, required this.onTap, required this.text, required this.color, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
          color: color,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 15,
              color: colorBlack.withOpacity(0.12),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 80.w),
            icon,
            SizedBox(width: 10.w),
            Text(
              text,
              style: TextStyle(
                color: colorWhite,
                fontWeight: FontWeight.w600,
                fontSize: 14.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SeeMore extends StatelessWidget {
  final String text;
  const SeeMore({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 79.w,
      height: 26.h,
      decoration: BoxDecoration(
        color: colorWhite,
        borderRadius: BorderRadius.circular(8.r),
        border: Border.all(width: 1, color: const Color(0xFF4560CB)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: 10.sp,
              fontWeight: FontWeight.w500,
              color: const Color(0xFF4560CB),
            ),
          ),
          const SizedBox(width: 5),
          const Icon(Icons.arrow_forward_ios, color: Color(0xFF4560CB), size: 10),
        ],
      ),
    );
  }
}

class ViewDetails extends StatelessWidget {
  final String text;
  final Function onTap;
  const ViewDetails({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        width: 87.w,
        height: 26.h,
        decoration: BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.circular(8.r),
          border: Border.all(width: 1, color: const Color(0xFF4560CB)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text,
              style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
                color: const Color(0xFF4560CB),
              ),
            ),
            const SizedBox(width: 5),
            const Icon(Icons.arrow_forward_ios, color: Color(0xFF4560CB), size: 10),
          ],
        ),
      ),
    );
  }
}

class FillButton extends StatelessWidget {
  final String text;
  final Function onTap;
  const FillButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        width: 134.w,
        height: 50.h,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(15.r),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 15,
              color: colorBlack.withOpacity(0.1),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600, color: colorWhite),
          ),
        ),
      ),
    );
  }
}

class BorderButton extends StatelessWidget {
  final String text;
  final Function onTap;
  const BorderButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        width: 134.w,
        height: 50.h,
        decoration: BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(width: 0.5, color: colorGray),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 15,
              color: colorBlack.withOpacity(0.1),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600, color: colorText2),
          ),
        ),
      ),
    );
  }
}

class BorderButton2 extends StatelessWidget {
  final String text;
  final Function onTap;
  const BorderButton2({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        width: 134.w,
        height: 50.h,
        decoration: BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(width: 1, color: colorBlue),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 15,
              color: colorBlack.withOpacity(0.1),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600, color: colorBlue),
          ),
        ),
      ),
    );
  }
}

class BorderButton3 extends StatelessWidget {
  final String text;
  final Function onTap;
  const BorderButton3({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onTap();
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 50.h,
        decoration: BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(width: 0.5, color: colorBlue),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 4),
              blurRadius: 15,
              color: colorBlack.withOpacity(0.1),
            ),
          ],
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600, color: colorBlue),
          ),
        ),
      ),
    );
  }
}
