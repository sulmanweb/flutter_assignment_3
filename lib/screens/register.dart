import 'package:assignment_3x/widgets/login_email_input.dart';
import 'package:assignment_3x/widgets/login_password_input.dart';
import 'package:assignment_3x/widgets/register_button.dart';
import 'package:assignment_3x/widgets/user_image_picker.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Image Picker',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        elevation: 20,
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              UserImagePicker(),
              SizedBox(height: 16),
              LoginEmailInput(),
              SizedBox(height: 16),
              LoginPasswordInput(),
              SizedBox(height: 16),
              RegisterButton(),
            ],
          ),
        ),
      ),
    );
  }
}
