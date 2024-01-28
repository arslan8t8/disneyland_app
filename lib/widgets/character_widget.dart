// ignore_for_file: must_be_immutable, use_build_context_synchronously

import 'package:disneyland_app/app_screens/user_screens/success_screen.dart';
import 'package:disneyland_app/models/character_model/character_model.dart';
import 'package:disneyland_app/services/api_service.dart';
import 'package:disneyland_app/services/token_service.dart';
import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/utility/constant.dart';
import 'package:disneyland_app/widgets/misc_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CharacterWidget extends StatefulWidget {
  final CharacterModel character;
  const CharacterWidget({
    super.key,
    required this.character,
  });

  @override
  State<CharacterWidget> createState() => _CharacterWidgetState();
}

class _CharacterWidgetState extends State<CharacterWidget> {
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        castVote();
      },
      child: Container(
        width: 164.w,
        decoration: BoxDecoration(
          color: colorWhite,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(width: 1, color: colorGray),
          boxShadow: [
            BoxShadow(
              offset: const Offset(4, 4),
              blurRadius: 15,
              color: colorBlack.withOpacity(0.10),
            ),
          ],
        ),
        child: isloading
            ? loadingWidget()
            : Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 190.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.r)),
                      //add some dummy image url

                      image: DecorationImage(
                          image: NetworkImage(widget.character.imageUrl), fit: BoxFit.cover),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  SizedBox(
                    width: 150.w,
                    height: 30.h,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 2.w),
                      child: Center(
                        child: Text(
                          widget.character.characterName,
                          softWrap: true,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            color: colorText2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
      ),
    );
  }

  //cating vote

  Future castVote() async {
    try {
      setState(() {
        isloading = true;
      });
      final user = TokenService.instance.value.user.value;

      String link = '$baseUrl$voteEndpoint/submit-vote';
      var body = {
        "voteId": 0,
        "userId": user!.userId,
        "characterId": widget.character.characterId,
        "voteTime": DateTime.now().toUtc().toIso8601String(),
      };

      var response = await ApiService().postRequest(link, body);

      if (response.statusCode == 200) {
        printLongString(response.body.toString());
        Navigator.push(context, MaterialPageRoute(builder: (context) => const SuccessVoteScreen()));
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
