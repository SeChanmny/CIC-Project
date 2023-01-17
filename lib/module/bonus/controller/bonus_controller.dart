import 'dart:convert';

import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:silver_app_bar/module/bonus/model/icon_model.dart';

class BonusController extends GetxController {
  var isloading = false.obs;
  final iconsModel = IconsModel().obs;
  final iconsModelList = <IconsModel>[].obs;
  Future<IconsModel> getIcon() async {
    String url =
        'https://cicstaging.z1central.com/api/v4/service/qm?partial=menu';
    try {
      await http.get(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ).then(
        (res) {
          if (res.statusCode == 200) {
            isloading.value = true;
            var jsonRespone = json.decode(res.body)['data'];
            jsonRespone.map((e) {
              iconsModelList.add(IconsModel.fromJson(e));
            }).toList();

            debugPrint('YEssssssssssssssss');
            debugPrint('${iconsModelList[0].id}');
          } else {
            isloading.value = false;
          }
        },
      );
    } finally {}
    return iconsModel.value;
  }

  @override
  // ignore: must_call_super
  initState() {
    // ignore: avoid_print
    // print("initState Called");
    getIcon();
  }
}
