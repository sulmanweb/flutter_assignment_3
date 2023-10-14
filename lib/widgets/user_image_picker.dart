import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserImagePicker extends StatefulWidget {
  const UserImagePicker({super.key});

  @override
  State<UserImagePicker> createState() => _UserImagePickerState();
}

class _UserImagePickerState extends State<UserImagePicker> {
  File? _pickedImageFile;

  void _pickImage() async {
    final pickedImage = await ImagePicker().pickImage(
      source: ImageSource.camera,
      imageQuality: 50,
      maxWidth: 150,
    );

    if (pickedImage == null) return;

    setState(() {
      _pickedImageFile = File(pickedImage.path);
    });
  }

  void _clearImage() {
    setState(() {
      _pickedImageFile = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 100,
          backgroundImage: const AssetImage('assets/images/placeholder.png'),
          foregroundImage:
              _pickedImageFile != null ? FileImage(_pickedImageFile!) : null,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            TextButton.icon(
              style: TextButton.styleFrom(
                iconColor: Colors.blue,
                foregroundColor: Colors.blue,
              ),
              onPressed: _pickImage,
              icon: const Icon(Icons.camera_alt),
              label: const Text('Pick Image'),
            ),
            if (_pickedImageFile != null)
              TextButton.icon(
                style: TextButton.styleFrom(
                  iconColor: Colors.red,
                  foregroundColor: Colors.red,
                ),
                onPressed: _clearImage,
                icon: const Icon(Icons.cancel),
                label: const Text('Cancel'),
              ),
          ],
        ),
      ],
    );
  }
}
