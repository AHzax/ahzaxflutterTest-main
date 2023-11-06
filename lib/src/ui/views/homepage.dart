// flutter imports
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:docapp/src/utils/routes/app_routes.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

// package imports
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
import '../../services/auth.dart';
import '../../utils/config/uidata.dart';
import '../widgets/common_scaffold.dart';
import '../widgets/logoWidget.dart';

// utils

// services

// import '../../../../utils/config/uidata.dart';
// import '../../../widgets/common_scaffold.dart';
// import '../controller/home_controller.dart';
// import '../../../widgets/lists/listcard.dart';

// widgets

//Dynamic list

class HomePage extends StatelessWidget {
  // GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  final AuthService auth = AuthService();

  Widget bodyData() {
    return GetBuilder<HomeController>(
      builder: (_) {
        return _.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: Get.height / 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Welcome ",
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          _.userName!,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                    SizedBox(
                      height: Get.height / 40,
                    ),
                    SizedBox(
                      height: Get.height / 40,
                    ),
                    SizedBox(
                      height: Get.height / 40,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          height: Get.height / 4.3,
                          child: Image.asset(
                            'assets/images/Artboard 12 1.png',
                          ),
                        ),
                        TextButton(
                            onPressed: () {
                              Get.offAllNamed(Routes.editUserName);
                            },
                            child: Container(
                              width: Get.width / 2.4,
                              height: Get.height * 0.06,
                              decoration: ShapeDecoration(
                                  color: UIDataColors.commonColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              child: Center(
                                child: Text(
                                  'Edit User Name',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            )),
                        TextButton(
                            onPressed: () {
                              Get.offAllNamed(Routes.editEmail);
                            },
                            child: Container(
                              width: Get.width / 2.4,
                              height: Get.height * 0.06,
                              decoration: ShapeDecoration(
                                  color: UIDataColors.commonColor,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20))),
                              child: Center(
                                child: Text(
                                  'Edit Email',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ))
                      ],
                    )
                  ],
                ),
              );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      bodyData: bodyData(),
      showDrawer: true,
      enableHeader: false,
      headerName: false,
      showFAB: false,
      showAppBar: true,
      showBottomNav: true,
      appTitle: 'Home',
      actionFirstIconCallBack: () {
        Get.toNamed(Routes.newDocument);
      },
      actionFirstIcon: Icons.control_point_duplicate_sharp,
    );
  }
}
