import 'package:get/get.dart';

import '../controllers/editingController.dart';
class EditBinding extends Bindings
{
  @override
  void dependencies() {
    Get.lazyPut<EditController>(() => EditController());
  }

}