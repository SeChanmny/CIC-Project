import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:silver_app_bar/module/filter_list_company/controller/filter_list_company_controller.dart';
import 'package:silver_app_bar/module/login/Util/local_storage.dart';
import 'package:silver_app_bar/module/login/page/login.dart';
import 'package:silver_app_bar/module/profile/page/home_page.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({super.key});

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen> {
  final con = Get.put(FilterListCompanyController());
  onNavigator() async {
    var token = await LocalStorage.getStringValue(key: 'token');
    Future.delayed(const Duration(seconds: 2), () {
      if (token == '') {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => const login()));
      } else {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const HomeProfile()));
      }
    });
  }

  @override
  void initState() {
    onNavigator();
    // TODO: implement initState
    onNavigator();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SvgPicture.asset(
          'assets/svg/logo_company.svg',
          height: 90,
        ),
      ),
    );
  }
}
