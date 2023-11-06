// flutter imports
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:docapp/src/utils/routes/app_routes.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/cupertino.dart';

// package imports
import 'package:get/get.dart';

import '../../controllers/home_controller.dart';
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
                    Container(
                      height: Get.height / 4.2,
                      width: Get.width / 1.11,
                      decoration: ShapeDecoration(
                        color: Colors.black38,
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/Group 94.jpg',
                            ),
                            fit: BoxFit.cover),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        // color: Colors.blue,
                      ),
                    ),
                    SizedBox(
                      height: Get.height / 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LogoCard(
                          onPressed: () {
                            _.openAndLoadFiles();
                          },
                          imagePath: "assets/images/file-storage 1.png",
                          CardText: "File Storage",
                        ),
                        LogoCard(
                          onPressed: () {
                            // Get.toNamed(Routes.signatureRoute);
                          },
                          imagePath: "assets/images/drive 1.png",
                          CardText: "Google Drive",
                        ),
                        LogoCard(
                          onPressed: () {
                            // Get.toNamed(Routes.signatureRoute);
                          },
                          imagePath: "assets/images/dropbox 1.png",
                          CardText: "DropBox",
                        ),
                        LogoCard(
                          onPressed: () {
                            // Get.toNamed(Routes.signatureRoute);
                          },
                          imagePath: "assets/images/personal-information 1.png",
                          CardText: "Personal Storage",
                        )
                      ],
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
                            onPressed: () {},
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
