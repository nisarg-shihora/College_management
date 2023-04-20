import 'package:admin_college_management/page_controllers/register_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common_component/component_login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final RegisterController _registerController = Get.put(RegisterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('register_admin'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginComponent.formField(
                controller: _registerController.firstNameController,
                hintText: 'firstname',
                obscureText: false,
                validatorText: 'Enter your email address',
                icon: const Icon(Icons.person)),
            LoginComponent.formField(
              controller: _registerController.lastNameController,
              hintText: 'lastname',
              obscureText: false,
              validatorText: 'Enter your email address',
              icon: const Icon(Icons.person_outline),
            ),
            LoginComponent.formField(
                controller: _registerController.emailController,
                hintText: 'email',
                obscureText: false,
                validatorText: 'Enter your email address',
                icon: const Icon(Icons.email)),
            LoginComponent.formField(
                controller: _registerController.phoneNumberController,
                hintText: 'phone number',
                obscureText: false,
                validatorText: 'Enter your password',
                icon: const Icon(Icons.phone)),
            LoginComponent.formField(
                controller: _registerController.passwordController,
                hintText: 'password',
                obscureText: true,
                validatorText: 'Enter your password',
                icon: const Icon(Icons.password)),
            ElevatedButton(
              onPressed: () {
                // _registerController.registerAdmin();
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
