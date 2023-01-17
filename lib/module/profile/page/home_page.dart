import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:silver_app_bar/module/profile/Component/CarouselWithIndicator.dart';
import 'package:silver_app_bar/module/profile/Component/information_profile.dart';
import 'package:silver_app_bar/module/profile/controller/carosel_image_controller.dart';
import 'package:silver_app_bar/module/profile/util/app_color.dart';

class HomeProfile extends StatefulWidget {
  const HomeProfile({super.key});

  @override
  State<HomeProfile> createState() => _HomeProfileState();
}

class _HomeProfileState extends State<HomeProfile> {
  final con = Get.put(CaroselImageController());
  @override
  void initState() {
    con.getImage();
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: SvgPicture.asset('assets/svg/Bell.svg'),
          ),
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: SvgPicture.asset('assets/svg/question.svg'),
          ),
        ],
        backgroundColor: AppColorProfile.mainColor,
        leadingWidth: 200,
        leading: Row(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 10),
              width: 60,
              height: double.infinity,
              // color: Colors.red,
              // color: Colors.red,
              child: SvgPicture.asset(
                'assets/svg/cic logo.svg',
                height: 5,
                width: 5,
                fit: BoxFit.scaleDown,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 18),
              width: 55,
              height: double.infinity,
              // color: Colors.green,
              // color: Colors.blueGrey,
              child: const Text(
                'Mobile',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const CarouselWithIndicatorDemo(),
            ShowInfomrmation(),
          ],
        ),
      ),
    );
  }
}
