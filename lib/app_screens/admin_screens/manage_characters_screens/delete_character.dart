// ignore_for_file: use_build_context_synchronously

import 'package:disneyland_app/services/api_service.dart';
import 'package:disneyland_app/services/state_service.dart';
import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/utility/constant.dart';
import 'package:disneyland_app/widgets/buttons.dart';
import 'package:disneyland_app/widgets/misc_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

class DeleteCharacter extends StatefulWidget {
  final int id;
  const DeleteCharacter({super.key, required this.id});

  @override
  State<DeleteCharacter> createState() => _DeleteCharacterState();
}

class _DeleteCharacterState extends State<DeleteCharacter> {
  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
          child: Column(
        children: [
          Expanded(child: Container()),
          Text(
            'Are you sure to delete this character?',
            style: TextStyle(color: colorWhite, fontSize: 16.sp, fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 50.h,
          ),
          isloading
              ? loadingWidget()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 100.w,
                      child: PrimaryButton(
                        color: colorRed,
                        text: 'Yes',
                        onPressed: () {
                          deleteCharacterFromDb();
                        },
                      ),
                    ),
                    SizedBox(
                      width: 100.w,
                      child: PrimaryButton(
                        color: Colors.green,
                        text: 'No',
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    )
                  ],
                ),
          Expanded(child: Container())
        ],
      )),
    );
  }

  //backend integration

  Future deleteCharacterFromDb() async {
    try {
      setState(() {
        isloading = true;
      });
      String link = '$baseUrl$disneylandEndPoint/delete-character?id=${widget.id}';
      var response = await ApiService().deleteRequest(link);
      if (response.statusCode == 200) {
        context.read<CharacterStateService>().deleteCharacter(widget.id);
        //show toast message
        toastWidget(message: 'Character deleted successfully');
        Navigator.pop(context);
      } else {
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
