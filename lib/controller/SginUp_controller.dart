import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:health_food_app/core/constant/route_app.dart';
import 'package:image_picker/image_picker.dart';

import '../core/constant/app_images.dart';

abstract class SginUpBaseController extends GetxController {
  signUp();
  checkPassword(String val);
  onTapPassword();
  filePicker(extension);
  gotologin();
}

class SginUpController extends SginUpBaseController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController numberPhoneController;
  late TextEditingController passwordController;
  late TextEditingController confirmPasswordController;
  late TextEditingController certPDFController;
  bool isShowPassword = true;
  FilePickerResult? result;
  String? fileName;
  PlatformFile? packedFile;
  bool isLoading = false;
  File? filetodisplay;
  @override
  filePicker(dynamic extension) async {
    try {
      isLoading = true;

      result = await FilePicker.platform.pickFiles(
        type: FileType.any,
        allowMultiple: false,
        allowedExtensions: extension,
      );
      if (result != null) {
        fileName = result!.files.first.name;
        packedFile = result!.files.first;
        filetodisplay = File(packedFile!.path.toString());
      }

      isLoading = false;
    } catch (e) {
      print(e);
    }
  }
  // FilePickerResult? result;
  // String? fileName;
  // PlatformFile? packedFile;
  // bool isLoading = false;
  // File? istodisplay;

  // late File image = File('');

  // late var picked;

  @override
  void onInit() {
    usernameController = TextEditingController();
    emailController = TextEditingController();
    numberPhoneController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    certPDFController = TextEditingController();

    super.onInit();
  }

  @override
  signUp() {
    if (formKey.currentState!.validate()) {
      Get.offNamed(AppRoutes.loginScreen);
      Get.delete<SginUpController>();
    } else {}
  }

  @override
  gotologin() {
    Get.offAllNamed(AppRoutes.loginScreen);
    update();
  }
  // } else {
  //   Get.defaultDialog(
  //       content: Container(
  //           height: 60,
  //           width: 50,
  //           child: Stack(
  //             children: [
  //               Image(
  //                 image: AssetImage(AppImages().baseImageFlash),
  //               ),
  //               Text("dara"),
  //             ],
  //           )));
  // }

  //  else {
  //   isValided == false;
  // }
  // if (formKey.currentState!.validate() ) {

  // } else if (formKey.currentState!.validate() == false) {
  //   return formKey.currentState!.validate()
  //       ? Get.offNamed(AppRoutes.loginScreen)
  //       : print("not vaild");
  // }
  @override
  String checkPassword(String val) {
    if (val.isEmpty) return 'Password cant be empty';
    if (val.length < 6) return 'Password is too short';
    if (confirmPasswordController.text != passwordController.text)
      return 'Passwords doesnt match :(';
    return '';
    update();
  }

  // @override
  // Future imageFunction() async {
  //   try {
  //     final imagePick =
  //         await ImagePicker().pickImage(source: ImageSource.gallery);
  //     if (imagePick == null) {
  //       return;
  //     }
  //     final imageTemp = File(imagePick.path);
  //     image = imageTemp;
  //   } on PlatformException catch (e) {
  //     return 'this error is $e';
  //   }
  //   update();
  // }

  onTapPassword() {
    isShowPassword != isShowPassword;
    update();
  }

  // uploadFile() async {
  //   picked = await FilePicker.platform.pickFiles();

  //   if (picked != null) {
  //     return picked.files.first.name;
  //     update();
  //   }
  // }

  @override
  void dispose() {
    usernameController.dispose();
    emailController.dispose();
    numberPhoneController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    certPDFController.dispose();
    super.dispose();
  }
}

//method to load image and update `uploadedImage

// _startFilePicker() async {
// FileUploadInputElement uploadInput = FileUploadInputElement();
// uploadInput.click();

// uploadInput.onChange.listen((e) {
//   // read file content as dataURL
//   final files = uploadInput.files;
//   if (files?.length == 1) {
//     final file = files[0];
//     FileReader reader =  FileReader();

//     reader.onLoadEnd.listen((e) {

//     uploadedImage = reader.result;
//                 });

//     reader.onError.listen((fileEvent) {

//         option1Text = "Some Error occured while reading the file";

//     });

//     reader.readAsArrayBuffer(file);
//   }
// }

// void _openFileExplorer() async {
//   bool _loadingPath = true;
//   try {
//     _directoryPath = null;
//     _paths = (await FilePicker.platform.pickFiles(
//       type: _pickingType,
//       allowMultiple: _multiPick,
//       allowedExtensions: ['jpg', 'pdf', 'doc', 'docx', 'png'],
//     ))
//         ?.files;
//   } on PlatformException catch (e) {
//     print("Unsupported operation" + e.toString());
//   } catch (ex) {
//     print(ex);
//   }
//   if (!mounted) return;
//   setState(() {
//     _loadingPath = false;
//     _fileName = _paths != null ? _paths.map((e) => e.name).toString() : '...';
//   });
// }
