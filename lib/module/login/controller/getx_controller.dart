import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:silver_app_bar/module/login/Util/local_storage.dart';
import 'package:silver_app_bar/module/login/model/freezed_usermodel.dart';
import 'package:http/http.dart' as http;
import 'package:silver_app_bar/module/login/page/profile_screen.dart';

class ProfileController extends GetxController {
  @override
  void onInit() {
    getUser();
    // Get called when controller is created
    super.onInit();
  }

  final usermodel = FreezedModel().obs;
  final userComparemodel = FreezedModel().obs;
  bool isLoadingUser = false;
  late bool isButttonDisable;

  Future<FreezedModel> getUser({int? memberId}) async {
    try {
      String token = await LocalStorage.getStringValue(key: 'token');
      // String token =
      //     'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyIiwianRpIjoiYTQyYWVmOWRiODE3NWQ4YzQ1OGNjOGRkYTUxN2NlMjZmNjk5YmQzNGRkMjdiNTE3NzI0ZjU2N2NlNjI1MzYzZDAxYjExNDYxZjcwZGEyMTIiLCJpYXQiOjE2NzIwMzUxNzkuNjMzNzIzLCJuYmYiOjE2NzIwMzUxNzkuNjMzNzI2LCJleHAiOjE3MDM1NzExNzkuNjI5MTE2LCJzdWIiOiI0OCIsInNjb3BlcyI6WyIqIl19.uZC976N2nx31IRMENCSKlyLhcSUeWA-bk7H436GdlOCtrpJ3H1rD1_6dXmwKhFE3u9Xwxl5T4yTPqL6hMb08cjwcuVeTHNrHFpyD5cf6XXZ2A85vSTjdgiCp56zwXB_QiXSvT9k59McsJ0I4raoJZwGKNJAfpht1DzAXGtmNE7KjX6c5cdbef-LOg_50gsh5wL3beqLAXr7D0ASSIzi2TFDRrs86L0PAYc-v2oxJDwQ6dGePHSYqoLJMgoYLexWMe9h02JRAI199iOwypRVMaw5jpZvpTobVppgvxDiB8fHbrmYRK35QVEdkl5HeY82oMTvxoN7zeYzqkDw4i3It5nH3HlgrZjOOlc-UNdtuPr7kkSssj28ceivZwzvMo2Sruz4IRK28vNc5JLFKf7C6P6IUxmbrjzNA4k8Wo7UWq1TpI5_1hEEUKTsKdustdtED9pParwgmTZTTKLJQzMclvZ_gXQAy41bK1NQ0MRKzd3kWR6a3P3TjxIKxyFfDS1LyMhU4UbGhDx-IzFdLCep6Z3eVEJpBgoZESAU4RYpmuRbGF3R9q4_d1oLRln9WNjsLIHYwZ3H-v3sBWOuEDoCyUK5hHbQx3y8g46TXSxTAy4MG7zlEvVDAH0zESlxXjNUc1BVfwYMG1FuJ1ixS0f0d-mQOfchGg3Zz90rlyKGckxU';

      await http.get(
        Uri.parse('https://cicstaging.z1central.com/api/v4/user?id=$memberId'),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          'Authorization': 'Bearer $token'
        },
      ).then((res) {
        if (res.statusCode == 200) {
          isLoadingUser = true;
          debugPrint('Success id++++++:${res.body.toString()}');
          var jsoneRespone = json.decode(res.body);
          usermodel.value = FreezedModel.fromJson(jsoneRespone);
          debugPrint('Success id++++++999999:${usermodel.value.customerId}');
        }
      });
    } finally {
      isLoadingUser = false;
    }
    return usermodel.value;
  }

  TextEditingController khmername = TextEditingController();
  TextEditingController fullname = TextEditingController();
  TextEditingController dateofbirth = TextEditingController();
  TextEditingController gender = TextEditingController();
  TextEditingController nationality = TextEditingController();
  TextEditingController identitytype = TextEditingController();
  TextEditingController identitynumber = TextEditingController();
  TextEditingController companyname = TextEditingController();
  bool isloadingUpdate = false;

  Future<void> updateProfile(BuildContext context) async {
    print('yessssssssss1111111: ${userComparemodel.value.fullName}');
    String token = await LocalStorage.getStringValue(key: 'token');
    String url =
        'https://cicstaging.z1central.com/api/v3/member-profile/update';
    try {
      http.post(Uri.parse(url),
          body: jsonEncode({
            "member_id": userComparemodel.value.customerId,
            "khmer_name": "Syying KH",
            "full_name": userComparemodel.value.fullName,
            "date_of_birth": "10/04/1999",
            "gender": "Female",
            "nationality": "Khmer",
            "identity_type": "qqq",
            "identity_number": "122",
            "company_name": userComparemodel.value.companyName
          }),
          headers: {
            'Content-Type': 'application/json',
            'Accept': 'application/json',
            'Authorization': 'Bearer $token'
          }).then((resp) {
        print('yessssssssss222222222222');
        var jsonRespone = json.decode(resp.body);
        if (resp.statusCode == 200) {
          isloadingUpdate = true;
          var code = jsonRespone['code'];
          print('yessssssssss');
          print(fullname.text);
          print(usermodel.value.fullName);
          print('kkkkkkkkkkkkkkkkkk${usermodel.value.fullName}');
          // if (fullname.text == usermodel.value.fullName) {
          //   isButttonDisable = true;
          //   print('aready');
          // } else {
          //   isButttonDisable = false;
          //   print('No aready');
          // }
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              backgroundColor: Colors.green,
              content: Text('Update success'),
            ),
          );
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const MyApp();
              },
            ),
          );
        } else {
          isloadingUpdate = false;
          print('No Update');
          // print(jsonRespone);
          print(resp.statusCode);
          print('=================================================');
          print(jsonRespone);
        }
      });
    } finally {}
  }
}
