import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:silver_app_bar/module/login/Util/local_storage.dart';
import '../page/edit_profile_real.dart';
import '../page/password.dart';
import '../page/profile_screen.dart';

final RegExp regexp = RegExp(r'^0+(?=.)');
bool? tokenSuccess = false;
bool isLoadingRegister = false;
PhoneNumber number = PhoneNumber(isoCode: 'KH');
String? dailCode;

Future onRegister(BuildContext context) async {
  isLoadingRegister = true;
  String url = 'https://cicstaging.z1central.com/api/register';

  var respone = await http.post(
    Uri.parse(url),
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    },
    body: jsonEncode(
        {"phone": '$dailCode${(phoneController.text).replaceAll(regexp, '')}'}),
  );
  try {
    var jsonRespone = jsonDecode(respone.body);
    if (respone.statusCode == 200) {
      // print(dialCode);
      debugPrint(
          'number++++:$dailCode${(phoneController.text).replaceAll(regexp, '')}');
      var success = jsonRespone['success'];
      if (success == true) {
        // ignore: use_build_context_synchronously
        Future.delayed(const Duration(seconds: 2), () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const Password();
              },
            ),
          );
        });

        debugPrint('Success register:$jsonRespone');
      } else {
        debugPrint('fail_________$jsonRespone');
        // ignore: use_build_context_synchronously
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.red,
            content: Text('Error \nIn Correct PhoneNumber'),
          ),
        );
      }
    } else {
      // debugPrint('fail+++++$jsonRespone');
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context)
          .showSnackBar(const SnackBar(content: Text('No register yet')));
    }
  } finally {
    isLoadingRegister = false;
  }
}

TextEditingController passwordController = TextEditingController();
TextEditingController phoneController = TextEditingController();
bool isloadingPassWord = false;

Future checkPassword(BuildContext context) async {
  debugPrint("----- password : ${passwordController.text}");
  debugPrint("----- phone : $dailCode${phoneController.text}");
  isloadingPassWord = true;
  // String token =
  //     'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIyIiwianRpIjoiMTQxMmIyMDZjYjg5ZjA3Nzg2ZjgyYzMwYTlkNjUyYzA5YWU2YjU2NmM2NmQ0MTdiMzBkYWNiNWRkZDI1ZDU2YjE0MzU5ZDg0ODYzMDBmMzIiLCJpYXQiOjE2NzA5ODI2ODMuNjIxMTk2LCJuYmYiOjE2NzA5ODI2ODMuNjIxMjA2LCJleHAiOjE3MDI1MTg2ODMuNjAzODEzLCJzdWIiOiIxMCIsInNjb3BlcyI6WyIqIl19.OQmlPlSdG9T5RPCDxuTysgbhG1U-2M5tGnGLGXMsQGiQaXCqkIzlOlIkN0eKRm9gbL4cDatE0rmjXYMoDaM8tmjQQqEQQxbtwGYK1K-jYz-QhPDp0LfyfAbwH0lz_ttnPkdJEkqiaVG8hlO9vmhTJY9wX9Vd81f3e_nTT9lNkbedMMamKU_tyUSWWWVud_w3xh4iqWs79jPF5eF0Tnuf7FSEMyk-h4edytSMrQkWBzek7Mv9KOsGRbsnLECPcYeSi-OimrYkzyZ5gyeX4zLaw4fhg5kQHeCy-81pAc9EwRkgtBVr5GNYhG1XJv1JSIqLqevnzYdiA0ze1forQCgKCjIYzcUcI9CzZyktnsBZWmW3NIN-iZOKJkKmhq7CzTbVS5wx0oa4QQtfB1GOpKgOpiIXu25PpTlaWto64iq-9z34RGAsMn08nEfdC9aP4_RobriBiUgWsFsm6kEAt5AplELib4hUEZmtOQF3PPMUkaXVi5YEja9JSsSktjPlRygamWOv_m_AofVr_R_hqq1KGnc-4tK2B66aviQ8_YVXpnrE-Vsn2Z5j4GfXIXJu_NVftUta1gseybAs58ppoJDNie-xWYLXLkCBmrJFozccRxw0r_2TAsPk4mRsxJtaiRNc66NbbCQADzGVP3pJJZxlIUCLEkFNpqFlNbQBf7ZaEmk';
  String url = 'https://cicstaging.z1central.com/api/login';

  var respone = await http.post(
    Uri.parse(url),
    headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
    },
    body: jsonEncode({
      "phone": "$dailCode" "${(phoneController.text).replaceAll(regexp, '')}",
      "password": passwordController.text
    }),
    //phoneController.text
    //passwordController.text
  );
  try {
    var jsonRespone = jsonDecode(respone.body);
    if (respone.statusCode == 200) {
      isloadingPassWord = true;
      var token = jsonRespone['access_token'];
      print(token);
      await LocalStorage.storeData(key: 'token', value: token);
      debugPrint("----- password ------ successs");
      // ignore: use_build_context_synchronously
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return MyApp();
          },
        ),
      );
      debugPrint('Success$jsonRespone');
    } else {
      isloadingPassWord = false;
      debugPrint("----- password ------ error : ${respone.statusCode}");
      // debugPrint('fail+++++$jsonRespone');
      // ignore: use_build_context_synchronously
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          backgroundColor: Colors.red,
          content: Text('Incorrect password'),
        ),
      );
    }
  } finally {
    isloadingPassWord = false;
  }
}

bool isLoadingOtp = false;
// int? otpNumber;
TextEditingController otpNumber = TextEditingController();
Future<void> onRequest() async {
  debugPrint('otp success+++:111111');
  isLoadingOtp = true;
  String url = 'https://cicstaging.z1central.com/api/request-otp';
  try {
    http.post(Uri.parse(url),
        body: jsonEncode({
          "phone": '$dailCode${(phoneController.text).replaceAll(regexp, '')}'
        }),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }).then((resp) {
      debugPrint('otp success+++:1111112222222:${resp.statusCode}');

      if (resp.statusCode == 200) {
        debugPrint('otp success+++:${resp.body}');
      }
    });
  } finally {
    isLoadingOtp = false;
  }
}

TextEditingController veryCode = TextEditingController();
Future<void> onVerifyOTP(BuildContext context) async {
  String url = 'https://cicstaging.z1central.com/api/verify-otp';
  try {
    http.post(Uri.parse(url),
        body: jsonEncode({
          "phone": '$dailCode${(phoneController.text).replaceAll(regexp, '')}',
          "verify_code": otpNumber.text
        }),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json'
        }).then((resp) {
      debugPrint('phone++++:${phoneController.text}');

      debugPrint('otp success+++:1111112222222:${resp.statusCode}');
      var jsonRespone = json.decode(resp.body);
      if (resp.statusCode == 200) {
        var code = jsonRespone['code'];

        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditProfileReal();
            },
          ),
        );
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('Incorrect pin code')));
      }
    });
  } finally {
    isLoadingOtp = false;
  }
}

