import 'package:final_exam/Screen/model/insta_model.dart';
import 'package:final_exam/utils/Api_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../view/fevrite_screen.dart';
import '../view/search_screen.dart';

class Insta_controller extends GetxController{

  RxInt i = 0.obs;

  void change(int index) {
    i.value = index;
    update();
  }

  Future<InstaModel> getdata() async {
    Api_helper apiNews = Api_helper();
    return await apiNews.uidget();
  }
}