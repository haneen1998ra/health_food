import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  FilePickerResult? result;
  String? fileName;
  PlatformFile? packedFile;
  bool isLoading = false;
  File? filetodisplay;

  void filePicker() async {
    try {
      setState(() {
        isLoading = true;
      });
      result = await FilePicker.platform.pickFiles(
        type: FileType.any,
        allowMultiple: false,
      );
      if (result != null) {
        fileName = result!.files.first.name;
        packedFile = result!.files.first;
        filetodisplay = File(packedFile!.path.toString());
      }

      setState(() {
        isLoading = false;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Center(
              child: isLoading
                  ? CircularProgressIndicator()
                  : TextButton(
                      onPressed: () {
                        filePicker();
                      },
                      child: Text("data"))),
          if (packedFile != null)
            SizedBox(height: 400, width: 400, child: Image.file(filetodisplay!)
                // Image.file(filetodisplay!)),
                ),
        ]),
      ),
    );
  }
}
