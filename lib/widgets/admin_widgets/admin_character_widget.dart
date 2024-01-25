import 'package:disneyland_app/app_screens/admin_screens/manage_characters_screens/delete_character.dart';
import 'package:disneyland_app/app_screens/admin_screens/manage_characters_screens/update_character.dart';
import 'package:disneyland_app/services/color_service.dart';
import 'package:disneyland_app/widgets/misc_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AdminCharacterWidget extends StatefulWidget {
  const AdminCharacterWidget({super.key});

  @override
  State<AdminCharacterWidget> createState() => _AdminCharacterWidgetState();
}

class _AdminCharacterWidgetState extends State<AdminCharacterWidget> {
  bool isloading = false;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                        image: NetworkImage(
                            'https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png'),
                        fit: BoxFit.cover),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '30',
                              style: TextStyle(
                                  color: colorRed, fontSize: 12.sp, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Divider(thickness: 1, height: 1, color: colorText),
                SizedBox(height: 10.h),
                SizedBox(
                  width: 150.w,
                  height: 30.h,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 2.w),
                    child: Center(
                      child: Text(
                        'widget.item!.item!',
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
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => UpdateCharacter()));
                      },
                      child: const Icon(
                        Icons.edit,
                        color: primaryColor,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context, MaterialPageRoute(builder: (context) => DeleteCharacter()));
                      },
                      child: const Icon(
                        Icons.delete,
                        color: colorRed,
                      ),
                    ),
                  ],
                )
              ],
            ),
    );
  }
}
