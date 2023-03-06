import 'dart:io';

import 'package:ai_genie/Image_Picker/image_picker_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class IImagePickerView extends StatefulWidget {
  const IImagePickerView({super.key});

  @override
  State<IImagePickerView> createState() => _IImagePickerViewState();
}

class _IImagePickerViewState extends State<IImagePickerView> {
  ImagePickerController imagePickerController =
      Get.put(ImagePickerController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              "Camera",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        body: Obx(() {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.transparent,
                  backgroundImage: imagePickerController
                          .selectedImagePath.isNotEmpty
                      ? FileImage(File(
                          imagePickerController.selectedImagePath.toString()))
                      : null,
                ),
              ),
              TextButton(
                  onPressed: () {
                    imagePickerController.getImage();
                  },
                  child: const Text(
                    "Take Image",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ))
            ],
          );
        }),
      ),
    );
  }
}
