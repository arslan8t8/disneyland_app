import 'package:disneyland_app/utility/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class TextFieldWidget extends StatefulWidget {
  String? text;
  final Icon? prefixIcon;
  final IconButton? suffixIcon;
  final bool? obsecureText;
  TextEditingController? controller;
  String? errorTxt;
  bool? validate;
  final maxlines;
  final minlines;
  final onchange;
  final keyboradType;
  TextFieldWidget({
    Key? key,
    this.text,
    this.prefixIcon,
    this.obsecureText,
    this.suffixIcon,
    this.controller,
    this.errorTxt,
    this.keyboradType,
    this.maxlines,
    this.minlines,
    this.onchange,
    this.validate,
  }) : super(key: key);

  @override
  State<TextFieldWidget> createState() => _TextFieldWidgetState();
}

class _TextFieldWidgetState extends State<TextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 4),
            blurRadius: 15,
            color: colorBlack.withOpacity(0.10),
          ),
        ],
      ),
      child: TextFormField(
        obscureText: widget.obsecureText ?? false,
        style: GoogleFonts.montserrat(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: colorText1,
        ),
        decoration: InputDecoration(
          //labelText: widget.text,
          filled: true,
          fillColor: colorWhite,
          prefixIcon: widget.prefixIcon,
          suffixIcon: widget.suffixIcon,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFB3B3B3), width: 0.5),
            borderRadius: BorderRadius.circular(15.r),
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFFB3B3B3), width: 0.5),
            borderRadius: BorderRadius.circular(15.r),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
          hintText: widget.text,
          hintStyle: GoogleFonts.montserrat(
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            color: colorText,
          ),
        ),
        controller: widget.controller,
        // ignore: body_might_complete_normally_nullable
        validator: (value) {
          if (widget.validate != null) {
            if (value == null || value.isEmpty) {
              return widget.errorTxt;
            }
            return null;
          }
        },
        onChanged: widget.onchange,
        keyboardType: widget.keyboradType,
        maxLines: widget.maxlines ?? 1,
        minLines: widget.minlines ?? 1,
      ),
    );
  }
}

// ignore: must_be_immutable
class ChatTextField extends StatefulWidget {
  String? text;
  final IconButton? prefixIcon;
  final IconButton? suffixIcon;
  final bool? obsecureText;
  TextEditingController? controller;
  String? errorTxt;
  bool? validate;
  final maxlines;
  final minlines;
  final onchange;
  final keyboradType;
  ChatTextField({
    super.key,
    this.text,
    this.prefixIcon,
    this.obsecureText,
    this.suffixIcon,
    this.controller,
    this.errorTxt,
    this.keyboradType,
    this.maxlines,
    this.minlines,
    this.onchange,
    this.validate,
  });

  @override
  State<ChatTextField> createState() => _ChatTextFieldState();
}

class _ChatTextFieldState extends State<ChatTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obsecureText ?? false,
      style: GoogleFonts.montserrat(
        fontSize: 16.sp,
        fontWeight: FontWeight.w500,
        color: const Color(0xFFAAAAAA),
      ),
      decoration: InputDecoration(
        //labelText: widget.text,
        filled: true,
        fillColor: colorWhite,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: colorBlue, width: 0.5),
          borderRadius: BorderRadius.circular(40.r),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: colorBlue, width: 0.5),
          borderRadius: BorderRadius.circular(40.r),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
        hintText: widget.text,
        hintStyle: GoogleFonts.montserrat(
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
          color: const Color(0xFFAAAAAA),
        ),
      ),
      controller: widget.controller,
      // ignore: body_might_complete_normally_nullable
      validator: (value) {
        if (widget.validate != null) {
          if (value == null || value.isEmpty) {
            return widget.errorTxt;
          }
          return null;
        }
      },
      onChanged: widget.onchange,
      keyboardType: widget.keyboradType,
      maxLines: widget.maxlines,
      minLines: widget.minlines ?? 1,
    );
  }
}

// ignore: must_be_immutable
class TextField2 extends StatefulWidget {
  String? text;
  final IconButton? prefixIcon;
  final IconButton? suffixIcon;
  final bool? obsecureText;
  TextEditingController? controller;
  String? errorTxt;
  bool? validate;
  final maxlines;
  final minlines;
  final onchange;
  final keyboradType;
  final readonly;
  TextField2(
      {super.key,
      this.text,
      this.prefixIcon,
      this.obsecureText,
      this.suffixIcon,
      this.controller,
      this.errorTxt,
      this.keyboradType,
      this.maxlines,
      this.minlines,
      this.onchange,
      this.validate,
      this.readonly});

  @override
  State<TextField2> createState() => _TextField2State();
}

class _TextField2State extends State<TextField2> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obsecureText ?? false,
      style: GoogleFonts.montserrat(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: colorText1,
      ),
      decoration: InputDecoration(
        //labelText: widget.text,
        filled: true,
        fillColor: colorWhite,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: colorGray, width: 0.5),
          borderRadius: BorderRadius.circular(15.r),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: colorGray, width: 0.5),
          borderRadius: BorderRadius.circular(15.r),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
        hintText: widget.text,
        hintStyle: GoogleFonts.montserrat(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: colorText1,
        ),
      ),
      controller: widget.controller,
      // ignore: body_might_complete_normally_nullable
      validator: (value) {
        if (widget.validate != null) {
          if (value == null || value.isEmpty) {
            return widget.errorTxt;
          }
          return null;
        }
      },
      onChanged: widget.onchange,
      keyboardType: widget.keyboradType,
      maxLines: widget.maxlines ?? 1,
      minLines: widget.minlines ?? 1,
      readOnly: widget.readonly ?? false,
    );
  }
}

// ignore: must_be_immutable
class TextFieldFix extends StatefulWidget {
  String? text;
  final IconButton? prefixIcon;
  final IconButton? suffixIcon;
  final bool? obsecureText;
  TextEditingController? controller;
  String? errorTxt;
  bool? validate;
  final maxlines;
  final minlines;
  final onchange;
  final keyboradType;
  final pre;
  TextFieldFix(
      {super.key,
      this.text,
      this.prefixIcon,
      this.obsecureText,
      this.suffixIcon,
      this.controller,
      this.errorTxt,
      this.keyboradType,
      this.maxlines,
      this.minlines,
      this.onchange,
      this.validate,
      this.pre});

  @override
  State<TextFieldFix> createState() => _TextFieldFixState();
}

class _TextFieldFixState extends State<TextFieldFix> {
  String prefix = '';
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obsecureText ?? false,
      style: GoogleFonts.montserrat(
        fontSize: 14.sp,
        fontWeight: FontWeight.w500,
        color: colorText1,
      ),
      // inputFormatters: [
      //   LengthLimitingTextInputFormatter(
      //     50 - 'https://www.wardrobesetc.com/'.length,
      //   ),
      // ],
      onTap: () {
        if (widget.pre == 1) {
          setState(() {
            prefix = 'https://www.wardrobesetc.com/';
          });
        } else {
          setState(() {
            prefix = 'https://instagram.com/';
          });
        }
      },
      decoration: InputDecoration(
        prefixText: prefix,
        //labelText: widget.text,
        filled: true,
        fillColor: colorWhite,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: colorGray, width: 0.5),
          borderRadius: BorderRadius.circular(15.r),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: colorGray, width: 0.5),
          borderRadius: BorderRadius.circular(15.r),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
        hintText: widget.text,
        hintStyle: GoogleFonts.montserrat(
          fontSize: 14.sp,
          fontWeight: FontWeight.w500,
          color: colorText1,
        ),
      ),
      controller: widget.controller,
      // ignore: body_might_complete_normally_nullable
      validator: (value) {
        if (widget.validate != null) {
          if (value == null || value.isEmpty) {
            return widget.errorTxt;
          }
          return null;
        }
      },
      onChanged: widget.onchange,
      keyboardType: widget.keyboradType,
      maxLines: widget.maxlines ?? 1,
      minLines: widget.minlines ?? 1,
    );
  }
}

// ignore: must_be_immutable
class TextField3 extends StatefulWidget {
  String? text;
  final IconButton? prefixIcon;
  final IconButton? suffixIcon;
  final bool? obsecureText;
  TextEditingController? controller;
  String? errorTxt;
  bool? validate;
  final maxlines;
  final minlines;
  final onchange;
  final keyboradType;
  final length;
  TextField3(
      {super.key,
      this.text,
      this.prefixIcon,
      this.obsecureText,
      this.suffixIcon,
      this.controller,
      this.errorTxt,
      this.keyboradType,
      this.maxlines,
      this.minlines,
      this.onchange,
      this.validate,
      this.length});

  @override
  State<TextField3> createState() => _TextField3State();
}

class _TextField3State extends State<TextField3> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: widget.length,
      obscureText: widget.obsecureText ?? false,
      style: GoogleFonts.montserrat(
        fontSize: 12.sp,
        fontWeight: FontWeight.w500,
        color: colorText1,
      ),
      decoration: InputDecoration(
        //labelText: widget.text,
        filled: true,
        fillColor: colorWhite,
        prefixIcon: widget.prefixIcon,
        suffixIcon: widget.suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: colorGray, width: 0.5),
          borderRadius: BorderRadius.circular(15.r),
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: colorGray, width: 0.5),
          borderRadius: BorderRadius.circular(15.r),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
        hintText: widget.text,
        hintStyle: GoogleFonts.montserrat(
          fontSize: 12.sp,
          fontWeight: FontWeight.w500,
          color: colorText2,
        ),
      ),
      controller: widget.controller,
      // ignore: body_might_complete_normally_nullable
      validator: (value) {
        if (widget.validate != null) {
          if (value == null || value.isEmpty) {
            return widget.errorTxt;
          }
          return null;
        }
      },
      onChanged: widget.onchange,
      keyboardType: widget.keyboradType,
      maxLines: widget.maxlines ?? 1,
      minLines: widget.minlines ?? 1,
    );
  }
}
