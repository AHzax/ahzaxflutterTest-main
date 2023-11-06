import 'dart:ffi';

import 'package:docapp/src/services/auth.dart';
import 'package:docapp/src/utils/routes/app_routes.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  final Priority = 0;
  User? user = FirebaseAuth.instance.currentUser;

  @override
  RouteSettings? redirect(String? route) {
    final authService = Get.find<AuthService>();
    return authService.loggedInUser == ''
        ? RouteSettings(name: Routes.loginRoute)
        : null;
  }
}
