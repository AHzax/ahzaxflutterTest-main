import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditController extends GetxController {
  User? user = FirebaseAuth.instance.currentUser;
  bool isLoading = true;
  TextEditingController fName = TextEditingController();
  TextEditingController lName = TextEditingController();
  TextEditingController email = TextEditingController();
  RxBool isLoadingEdit = false.obs;
  @override
  Future<void> onInit() async {
    super.onInit();
  }

  @override
  Future<void> onReady() async {
    isLoading = false;
    update();
    super.onReady();
  }

  void startLoading() async {
    await Future.delayed(Duration(seconds: 1));
    isLoadingEdit(false);
  }

  Future<void> updateEmail(String email) async {
    if (email == '') {
    } else {
      await user?.updateEmail(email.trim());
      await user?.sendEmailVerification();
    }
  }

  Future<void> updateDisplayName(String firstname, String lastname) async {
    isLoadingEdit(true);

    await user?.updateDisplayName(
        "${firstname.toString().trim()} ${lastname.toString().trim()}");
    startLoading();
    // await user?.updateDisplayName(name.toString().trim());

    update();
  }
}
