import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:silver_app_bar/module/profile/model/carosel.dart';

class CaroselImageController extends GetxController {
  final isloadingImage = false.obs;
  final caroseModels = CaroseModels().obs;
  final caroseLists = <CaroseModels>[].obs;
  // final caroseListsIcons = <CaroseModels>[].obs;
  Future<CaroseModels> getImage() async {
    String url =
        'https://cicstaging.z1central.com/api/v4/service/qm?partial=menu';
    try {
      http.get(
        Uri.parse(url),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ).then((res) {
        isloadingImage.value = true;
        if (res.statusCode == 200) {
          var jsonRespone = json.decode(res.body)["data"];
          print('nooooooooooooooooooo success : $jsonRespone');
          jsonRespone.map((e) {
            caroseLists.add(CaroseModels.fromJson(e));
          }).toList();
          // caroseModels.value = CaroseModels.fromJson(jsonRespone);
          print('aaaaaaaaaaaaaa : ${caroseLists[0].id}');
        } else {
          print('nooooooooooooooooooo');
        }
      });
    } finally {
      // isloadingImage.value = false;
    }

    return caroseModels.value;
  }
}
