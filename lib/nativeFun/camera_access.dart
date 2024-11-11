import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CameraAccess extends StatefulWidget {
  const CameraAccess({super.key});

  @override
  State<CameraAccess> createState() => _CameraAccessState();
}

class _CameraAccessState extends State<CameraAccess> {
  File? imagePath;

  // function that pick image from gallery
  Future<void> pickImageFromGallery() async {
    final pickedImage = await ImagePicker()
        .pickImage(source: ImageSource.gallery,);
    if (pickedImage != null) {
      setState(() {
        imagePath = File(pickedImage.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text(
          "Camera Access",
          style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: "Poppins",
              letterSpacing: 1,
              color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 300,
                width: 300,
                alignment: Alignment.center,
                padding: EdgeInsets.all(4),
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: imagePath == null
                    ? Text(
                        "No Image Selected",
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Poppins",
                            letterSpacing: 1,
                            color: Colors.grey),
                      )
                    : Image.file(
                        imagePath!,
                        fit: BoxFit.cover,

                      )),
            InkWell(
              onTap: () {
                pickImageFromGallery();
              },
              child: Container(
                  height: 55,
                  width: 200,
                  alignment: Alignment.center,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(100)),
                  child: Text(
                    "pick image",
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Poppins",
                        letterSpacing: 1,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
