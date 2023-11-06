import 'package:docapp/src/services/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../services/restclient.dart';

class HomeController extends GetxController {
  User? user = FirebaseAuth.instance.currentUser;

  bool isLoading = true;
  String? userName;

  int? customerCount;

  RestClient restClient = Get.find<RestClient>();
  dynamic res;
  Map data = {};

  @override
  Future<void> onInit() async {
    super.onInit();
  }

  @override
  Future<void> onReady() async {
    isLoading = false;

    update();
    userName = user!.displayName.toString();
    super.onReady();
  }
}
