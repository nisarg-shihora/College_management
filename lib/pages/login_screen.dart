import 'package:admin_college_management/page_controllers/login_controller.dart';
import 'package:admin_college_management/pages/register_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../common_component/component_login_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final LoginController _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('admin_login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LoginComponent.formField(
                controller: _loginController.emailController,
                hintText: 'email',
                obscureText: false,
                validatorText: 'Enter your email address',
                icon: const Icon(Icons.email)),
            LoginComponent.formField(
                controller: _loginController.passwordController,
                hintText: 'password',
                obscureText: true,
                validatorText: 'Enter your password',
                icon: const Icon(Icons.password)),
            ElevatedButton(
              onPressed: () {
                _loginController.loginAdmin();
              },
              child: const Text('Sign In'),
            ),

          ],
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
