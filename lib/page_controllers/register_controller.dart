import 'package:admin_college_management/pages/home_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();
  final passwordController = TextEditingController();

  List facultyList = [];
  List _emailList = [];
  List _passwordList = [];
  int? index;

  // Future<void> registerAdmin() async {
  //   if (isEmail(emailController.text)) {
  //     await FirebaseFirestore.instance
  //         .collection('Admin')
  //         .doc('Register admin')
  //         .collection('profile')
  //         .doc(emailController.text)
  //         .set({
  //       'firstname': firstNameController.text.toString(),
  //       'lastname': lastNameController.text.toString(),
  //       'email': emailController.text.toString(),
  //       'phonenumber': phoneNumberController.text.toString(),
  //       'password': passwordController.text.toString(),
  //     }).then((querySnapshot) async {
  //       await FirebaseFirestore.instance
  //           .collection('Admin')
  //           .doc('Register admin')
  //           .get()
  //           .then((snapshot) {
  //         if (snapshot.exists) {
  //           facultyList = snapshot.data()!['faculty'];
  //           _emailList = facultyList
  //               .map((e) => e.toString().split(':::').first)
  //               .toList();
  //           _passwordList =
  //               facultyList.map((e) => e.toString().split(':::').last).toList();
  //           index = _emailList.indexOf(emailController.text);
  //           if (emailController.text == _emailList[index!].toString() &&
  //               passwordController.text == _passwordList[index!].toString()) {
  //             Get.to(const HomeScreen());
  //           }
  //         } else {
  //           return;
  //         }
  //       });
  //     });
  //   }
  // }

  bool isEmail(String? string) {
    // Null or empty string is invalid
    if (string == null || string.isEmpty) {
      return false;
    }

    const pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
    final regExp = RegExp(pattern);

    if (!regExp.hasMatch(string)) {
      return false;
    }
    return true;
  }
}
