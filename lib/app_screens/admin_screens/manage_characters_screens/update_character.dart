// ignore_for_file: use_build_context_synchronously

import 'dart:convert';
import 'dart:io';

import 'package:disneyland_app/models/admin_model/admin_model.dart';
import 'package:disneyland_app/models/character_model/character_model.dart';
import 'package:disneyland_app/models/image_model/image_upload_model.dart';
import 'package:disneyland_app/services/api_service.dart';
import 'package:disneyland_app/services/state_service.dart';
import 'package:disneyland_app/services/token_service.dart';
import 'package:disneyland_app/utility/colors.dart';
import 'package:disneyland_app/utility/constant.dart';
import 'package:disneyland_app/widgets/buttons.dart';
import 'package:disneyland_app/widgets/misc_widget.dart';
import 'package:disneyland_app/widgets/textfield_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

class UpdateCharacter extends StatefulWidget {
  final CharacterModel character;
  const UpdateCharacter({super.key, required this.character});

  @override
  State<UpdateCharacter> createState() => _UpdateCharacterState();
}

class _UpdateCharacterState extends State<UpdateCharacter> {
  //controllers
  TextEditingController nameController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  XFile? image;
  bool isloading = false;

  //form key
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    nameController.text = widget.character.characterName;
    descriptionController.text = widget.character.description!;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: const Text(
          'Update Disneyland Character',
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
                      text: 'Character Name',
                      validate: true,
                      errorTxt: 'Please enter a valid name',
                      prefixIcon: const Icon(
                        Icons.star,
                      ),
                      controller: nameController,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  SizedBox(
                    width: 300.w,
                    child: TextFieldWidget(
                      text: 'description',
                      maxlines: 10,
                      minlines: 3,
                      controller: descriptionController,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 300.h,
                    width: 200.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: colorWhite,
                      image: image == null
                          ? DecorationImage(
                              image: NetworkImage(widget.character.imageUrl), fit: BoxFit.cover)
                          : DecorationImage(image: FileImage(File(image!.path)), fit: BoxFit.cover),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Row(
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
                              text: 'Update Character',
                              onPressed: () {
                                //validating form
                                if (formKey.currentState!.validate()) {
                                  //calling update character api
                                  updateCharacter();
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

  Future updateCharacter() async {
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

      printLongString(imageUploadModel!.data.image_url!);
      String link = '$baseUrl$disneylandEndPoint/update-character';
      CharacterModel charactertoupdate = CharacterModel(
          characterName: nameController.text,
          description: descriptionController.text,
          imageUrl:
              imageUploadModel == null ? widget.character.imageUrl : imageUploadModel!.data.image_url!,
          totalVotes: widget.character.totalVotes,
          isActive: true,
          characterId: widget.character.characterId);

      var response = await ApiService().postRequest(link, charactertoupdate.toJson());
      if (response.statusCode == 200) {
        CharacterModel newcharacter = CharacterModel.fromJson(jsonDecode(response.body)['data']);

        //adding new admin in provider state
        Provider.of<CharacterStateService>(context, listen: false).updateCharacter(newcharacter);

        //show toast message
        toastWidget(message: 'Character updated successfully');
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

    var request =
        http.MultipartRequest('POST', Uri.parse('$baseUrl$disneylandEndPoint/upload-character-image'));

    request.files.add(
        await http.MultipartFile.fromPath('image', image!.path, filename: image!.path.split('/').last));

    request.headers.addAll(headers);

    printLongString(request.fields.toString());
    var res = await request.send();
    return res;
  }
}
