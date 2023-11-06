import 'package:docapp/src/ui/widgets/forms/textfields/text_field.dart';
import 'package:docapp/src/utils/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/editingController.dart';
import '../../utils/config/uidata.dart';
import '../widgets/common_scaffold.dart';

// utils

// services

// import '../../../../utils/config/uidata.dart';
// import '../../../widgets/common_scaffold.dart';
// import '../controller/home_controller.dart';
// import '../../../widgets/lists/listcard.dart';

// widgets

//Dynamic list

class EditEmailPage extends StatelessWidget {
  // GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  Widget bodyData() {
    return GetBuilder<EditController>(
      builder: (_) {
        return _.isLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: SafeArea(
                  minimum: EdgeInsets.all(25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CommonTextField(
                        controller: _.fName,
                        labelText: "Your New Email Here",
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      TextButton(
                          onPressed: () {
                            _.updateEmail(_.email.text);
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
                                'Submit',
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
                  ),
                ),
              );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return CommonScaffold(
      bodyData: bodyData(),
      showDrawer: false,
      enableHeader: false,
      headerName: false,
      showFAB: false,
      showAppBar: false,
      showBottomNav: true,
      appTitle: 'Home',
    );
  }
}
