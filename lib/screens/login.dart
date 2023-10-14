import 'package:assignment_3x/widgets/container_image.dart';
import 'package:assignment_3x/widgets/login_button.dart';
import 'package:assignment_3x/widgets/login_email_input.dart';
import 'package:assignment_3x/widgets/login_password_input.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          'Container Image',
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
              Row(
                children: [
                  ContainerImage(),
                ],
              ),
              SizedBox(height: 16),
              LoginEmailInput(),
              SizedBox(height: 16),
              LoginPasswordInput(),
              SizedBox(height: 16),
              LoginButton(),
            ],
          ),
        ),
      ),
    );
  }
}
