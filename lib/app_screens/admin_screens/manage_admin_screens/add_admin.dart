// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:io';
import 'package:disneyland_app/models/admin_model/admin_model.dart';
import 'package:disneyland_app/models/image_model/image_upload_model.dart';
import 'package:disneyland_app/models/user_model/user_model.dart';
import 'package:disneyland_app/services/state_service.dart';
import 'package:disneyland_app/services/token_service.dart';
import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/utility/constant.dart';
import 'package:http/http.dart' as http;
import 'package:disneyland_app/models/admin_model/admin_signup_model.dart';
import 'package:disneyland_app/services/api_service.dart';
import 'package:disneyland_app/widgets/buttons.dart';
import 'package:disneyland_app/widgets/misc_widget.dart';
import 'package:disneyland_app/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

class AddAdmin extends StatefulWidget {
  const AddAdmin({super.key});

  @override
  State<AddAdmin> createState() => _AddAdminState();
}

class _AddAdminState extends State<AddAdmin> {
  bool obscureText = true;
  //controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  //form key
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  XFile? image;

  bool isloading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          'Add New Admin',
          style: TextStyle(color: colorWhite),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Form(
            key: formKey,
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 30.h,
                  ),
                  SizedBox(
                    width: 300.w,
                    child: TextFieldWidget(
                      errorTxt: 'Please enter your name',
                      validate: true,
                      text: 'Name',
                      prefixIcon: const Icon(
                        Icons.person,
                      ),
                      controller: nameController,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: 300.w,
                    child: TextFieldWidget(
                      errorTxt: 'Please enter your phone number',
                      validate: true,
                      text: 'Phone Number',
                      prefixIcon: const Icon(
                        Icons.phone,
                      ),
                      controller: phoneController,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: 300.w,
                    child: TextFieldWidget(
                      errorTxt: 'Please enter your email',
                      validate: true,
                      text: 'Email',
                      prefixIcon: const Icon(
                        Icons.email,
                      ),
                      controller: emailController,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  SizedBox(
                      width: 300.w,
                      child: TextFieldWidget(
                        errorTxt: 'Please enter your password',
                        validate: true,
                        text: 'Password',
                        prefixIcon: const Icon(
                          Icons.lock,
                        ),
                        controller: passwordController,
                        obsecureText: obscureText,
                        suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                          icon: obscureText
                              ? const Icon(Icons.visibility_off)
                              : const Icon(Icons.visibility),
                        ),
                      )),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 150.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: colorWhite,
                      image: image != null
                          ? DecorationImage(image: FileImage(File(image!.path)), fit: BoxFit.cover)
                          : const DecorationImage(
                              image: NetworkImage(
                                  'https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png'),
                              fit: BoxFit.cover),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                showImageSource(context);
                              },
                              child: const Icon(
                                Icons.camera_alt,
                                color: colorBlack,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                      width: 300.w,
                      child: isloading
                          ? loadingWidget()
                          : PrimaryButton(
                              text: 'Add Admin',
                              onPressed: () {
                                //check orm key validation
                                if (formKey.currentState!.validate()) {
                                  saveAdmin();
                                }
                              }))
                ],
              ),
            )),
      )),
    );
  }

  //getting image from source

  showImageSource(BuildContext context) async {
    return await showModalBottomSheet(
        context: context,
        builder: (context) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                  leading: const Icon(Icons.camera_alt, color: color1),
                  title: const Text('Camera'),
                  onTap: () async {
                    final selectedimage = await ImagePicker().pickImage(
                      source: ImageSource.camera,
                    );
                    if (selectedimage == null) {
                      return;
                    } else {
                      setState(() {
                        image = selectedimage;
                      });
                    }
                    Navigator.pop(context);
                  }),
              ListTile(
                leading: const Icon(
                  Icons.image,
                  color: color1,
                ),
                title: const Text('Gallery'),
                onTap: () async {
                  final selectedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
                  if (selectedImage == null) {
                    return;
                  } else {
                    setState(() {
                      image = selectedImage;
                    });
                  }
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }

  //backend logic

  Future saveAdmin() async {
    try {
      setState(() {
        isloading = true;
      });
      ImageUploadModel? imageUploadModel;
      if (image != null) {
        http.StreamedResponse res = await uploadProcess();
        if (res.statusCode == 200) {
          final uploadresponse = jsonDecode(String.fromCharCodes(await res.stream.toBytes()));
          printLongString(uploadresponse.toString());

          setState(() {
            imageUploadModel = ImageUploadModel.fromJson(uploadresponse);
          });
        } else if (res.statusCode == 401) {
          //refetch token bycalling refresh token api
          String link =
              '$baseUrl$authEndpoint/refresh-token?oldtoken=${TokenService.instance.value.token.value}';
          var token_response = await ApiService().refreshToken(link);
          if (token_response.statusCode == 200) {
            CurrentAdminModel admin = CurrentAdminModel.fromJson(jsonDecode(token_response.body));

            //setting state for admin
            TokenService.instance.setAdminValue(admin.data.admin);
            //settign token vale
            TokenService.instance.setApiTokenValue(admin.data.token);
            //calling tha upload image api again after token updating
            http.StreamedResponse uploadagain = await uploadProcess();
            if (uploadagain.statusCode == 200) {
              final responseagain = jsonDecode(String.fromCharCodes(await uploadagain.stream.toBytes()));
              setState(() {
                imageUploadModel = ImageUploadModel.fromJson(responseagain);
              });
              print('object:' + imageUploadModel!.toJson().toString());
            } else {
              final responseagain = jsonDecode(String.fromCharCodes(await uploadagain.stream.toBytes()));
              printLongString(responseagain.toString());

              toastWidget(message: 'Error uploading image');
              return;
            }
          } else {
            printLongString(token_response.body);
            setState(() {
              isloading = false;
            });
            toastWidget(message: 'Error uploading image');
            return;
          }
        } else {
          final response = jsonDecode(String.fromCharCodes(await res.stream.toBytes()));
          printLongString(response.toString());
          toastWidget(message: 'Error uploading image');
        }
      }
      printLongString(imageUploadModel!.data.image_url);
      String link = '$baseUrl$adminEndpoint/add-admin';
      AdminSignupModel adminSignupModel = AdminSignupModel(
        adminId: 0,
        adminName: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        profileImage: imageUploadModel == null
            ? 'https://www.pngitem.com/pimgs/m/146-1468479_my-profile-icon-blank-profile-picture-circle-hd.png'
            : imageUploadModel!.data.image_url,
        isEmailVerified: false,
        signUpDate: DateTime.now().toUtc().toIso8601String(),
      );

      var response = await ApiService().postRequest(link, adminSignupModel.toJson());
      if (response.statusCode == 200) {
        AdminData newAdmin = AdminData.fromJson(jsonDecode(response.body)['data']);

        //adding new admin in provider state
        Provider.of<AdminStateService>(context, listen: false).addAdmin(newAdmin);

        //show toast message
        toastWidget(message: 'Admin added successfully');
        Navigator.pop(context);
      } else {
        printLongString(response.body.toString());

        //gettign message from response
        var message = jsonDecode(response.body)['message'];
        //show toast message
        toastWidget(message: message);
      }
    } catch (ex) {
      printLongString(ex.toString());
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

  /////upload api call
  Future<http.StreamedResponse> uploadProcess() async {
    Map<String, String> headers = {
      "Authorization": 'Bearer ${TokenService.instance.value.token.value}',
      'Content-Type': 'application/json',
      'accept': '*/*'
    };

    var request = http.MultipartRequest('POST', Uri.parse('$baseUrl$adminEndpoint/upload-admin-image'));

    request.files.add(
        await http.MultipartFile.fromPath('image', image!.path, filename: image!.path.split('/').last));

    request.headers.addAll(headers);

    printLongString(request.fields.toString());
    var res = await request.send();
    return res;
  }
}
