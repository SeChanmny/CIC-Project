import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:silver_app_bar/module/bonus/page/bonus.dart';
import 'package:silver_app_bar/module/direactory/controller/member_controller.dart';
import 'package:silver_app_bar/module/direactory/screen/siverappbar.dart';
import 'package:silver_app_bar/module/profile/controller/carosel_image_controller.dart';
import 'package:silver_app_bar/module/report/page/report.dart';

class ShowInfomrmation extends StatelessWidget {
  final con = Get.put(CaroselImageController());
  final conMember = Get.put(MemberController());

  ShowInfomrmation({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => con.isloadingImage.value == false
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : Stack(
              children: [
                Container(
                  margin: const EdgeInsets.all(6),
                  width: double.infinity,
                  height: 430,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1,
                        // offset: const Offset(0, 3),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                Positioned(
                  top: 150,
                  left: 15,
                  child: SvgPicture.asset('assets/svg/Rectangle 12220.svg'),
                ),
                Positioned(
                  top: 300,
                  left: 15,
                  child: SvgPicture.asset('assets/svg/Rectangle 12220.svg'),
                ),
                Positioned(
                  left: 50,
                  top: 40,
                  child: SizedBox(
                    width: 100,
                    height: 80,
                    // color: Colors.red,
                    child: Column(
                      children: [
                        SvgPicture.network(
                          con.caroseLists[0].icon.toString(),
                          fit: BoxFit.scaleDown,
                          height: 50,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(con.caroseLists[0].key.toString())
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 240,
                  top: 40,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BonusPage(),
                        ),
                      );
                    },
                    child: SizedBox(
                      width: 100,
                      height: 80,
                      // color: Colors.red,
                      child: Column(
                        children: [
                          SvgPicture.network(
                            con.caroseLists[1].icon.toString(),
                            fit: BoxFit.cover,
                            height: 50,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(con.caroseLists[1].key.toString())
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 240,
                  top: 180,
                  child: SizedBox(
                    width: 100,
                    height: 80,
                    // color: Colors.red,
                    child: Column(
                      children: [
                        SvgPicture.network(
                          con.caroseLists[2].icon.toString(),
                          fit: BoxFit.scaleDown,
                          height: 50,
                        ),
                        const Text('My Investment')
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 180,
                  child: SizedBox(
                    width: 100,
                    height: 80,
                    // color: Colors.red,
                    child: Column(
                      children: [
                        SvgPicture.network(
                          con.caroseLists[3].icon.toString(),
                          fit: BoxFit.scaleDown,
                          height: 50,
                        ),
                        const Text('My Investment')
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 50,
                  top: 330,
                  child: InkWell(
                    onTap: () {
                      conMember.searchController.text = '';
                      Get.put(MemberController()).membermodelList.clear();
                      Get.put(MemberController()).currentPage.value = 1;
                      Get.put(MemberController()).getMember(
                          valuesearch: conMember.searchController.text);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const MyWidget(
                              hideme: 1,
                            ),
                          ));
                    },
                    child: SizedBox(
                      width: 100,
                      height: 80,
                      // color: Colors.red,
                      child: Column(
                        children: [
                          SvgPicture.network(
                            con.caroseLists[4].icon.toString(),
                            fit: BoxFit.scaleDown,
                            height: 50,
                          ),
                          const Text('Directory')
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 240,
                  top: 330,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ReportPage(),
                          ));
                    },
                    child: SizedBox(
                      width: 100,
                      height: 80,
                      // color: Colors.red,
                      child: Column(
                        children: [
                          SvgPicture.network(
                            con.caroseLists[5].icon.toString(),
                            fit: BoxFit.scaleDown,
                            height: 50,
                          ),
                          const Text('Report')
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
    );
  }
}
