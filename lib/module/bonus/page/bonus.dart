import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:silver_app_bar/module/bonus/controller/bonus_controller.dart';
import 'package:silver_app_bar/module/bonus/util/appcolor_bonus.dart';

import '../../profile/page/home_page.dart';
import '../../profile/util/app_color.dart';

class BonusPage extends StatefulWidget {
  const BonusPage({super.key});

  @override
  State<BonusPage> createState() => _BonusPageState();
}

class _BonusPageState extends State<BonusPage>
    with SingleTickerProviderStateMixin {
  final con = Get.put(BonusController());
  late TabController tabController;
  @override
  void initState() {
    con.getIcon();
    tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorBonus.blueDark,
      appBar: AppBar(
        elevation: 0,
        title: Container(
          margin: const EdgeInsets.only(top: 20),
          width: 100,
          height: 50,
          // color: Colors.green,
          child: const Text('Bonus'),
        ),
        actions: [
          // Container(
          //   margin: const EdgeInsets.only(right: 15),
          //   child: SvgPicture.asset('assets/svg/Bell.svg'),
          // ),
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: SvgPicture.asset('assets/svg/question.svg'),
          ),
        ],
        backgroundColor: AppColorProfile.mainColor,
        leadingWidth: 90,
        leading: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeProfile(),
                    ));
              },
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                width: 10,
                height: double.infinity,
                // color: Colors.red,
                child: SvgPicture.asset(
                  'assets/svg/Icon.svg',
                  height: 5,
                  width: 5,
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 10),
              width: 60,
              height: double.infinity,
              // color: Colors.red,
              child: SvgPicture.asset(
                'assets/svg/cic logo.svg',
                height: 5,
                width: 5,
                fit: BoxFit.scaleDown,
              ),
            ),
          ],
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: AppColorBonus.blueDark,
              leading: const Text(''),
              expandedHeight: 250.0,
              floating: false,
              // pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  // title: const Text("Collapsing Toolbar",
                  //     style: TextStyle(
                  //       color: Colors.white,
                  //       fontSize: 16.0,
                  //     )),
                  background: Container(
                    width: double.infinity,
                    color: AppColorBonus.blueDark,
                    child: Column(
                      children: [
                        Center(
                          child: Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                'Avaliable Balance',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                '0.00\$',
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.white,
                                ),
                              ),
                              const Text(
                                'As of 03-Jan-2023',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                              Obx(
                                () => Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.9),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      margin: const EdgeInsets.only(left: 20),
                                      width: 80,
                                      height: 80,
                                      child: con.isloading.value != true
                                          ? const CircularProgressIndicator()
                                          : SvgPicture.network(
                                              '${con.iconsModelList[0].icon}',
                                              fit: BoxFit.scaleDown,
                                            ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.9),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      margin: const EdgeInsets.only(left: 20),
                                      width: 80,
                                      height: 80,
                                      child: con.isloading.value != true
                                          ? const CircularProgressIndicator()
                                          : SvgPicture.network(
                                              '${con.iconsModelList[2].icon}',
                                              fit: BoxFit.scaleDown,
                                            ),
                                    ),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white.withOpacity(0.9),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      margin: const EdgeInsets.only(left: 20),
                                      width: 80,
                                      height: 80,
                                      child: con.isloading.value == false
                                          ? const CircularProgressIndicator()
                                          : SvgPicture.network(
                                              '${con.iconsModelList[3].icon}',
                                              fit: BoxFit.scaleDown,
                                            ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  )),
            ),
          ];
        },
        body: Container(
          margin: const EdgeInsets.only(top: 20),
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
          ),
          width: double.infinity,
          height: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 20, top: 15),
                child: Text('All Transactions'),
              ),
              TabBar(
                controller: tabController,
                // indicatorColor: Colors.blue,
                unselectedLabelColor: Colors.black,
                labelColor: Colors.blue,
                tabs: const [
                  Tab(
                    text: 'All',
                  ),
                  Tab(
                    text: 'Income',
                  ),
                  Tab(
                    text: 'Expanse',
                  ),
                ],
              ),
              Expanded(
                child: SizedBox(
                  width: double.infinity,
                  height: 100,
                  // color: Colors.red,
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 30, top: 10),
                              child: Text(
                                'Transactions',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: SizedBox(
                                width: double.infinity,
                                height: 100,
                                // color: Colors.blue,
                                child: ListView.builder(
                                  itemBuilder: (context, index) {
                                    return SizedBox(
                                      width: double.infinity,
                                      // color: Colors.green,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Padding(
                                            padding: EdgeInsets.only(left: 30),
                                            child: Text('01-August-2022'),
                                          ),
                                          Container(
                                            margin: const EdgeInsets.all(30),
                                            decoration: BoxDecoration(
                                              boxShadow: const [
                                                BoxShadow(
                                                    // offset: Offset(0, 1),
                                                    // color: Colors.white,
                                                    blurRadius: 0.1,
                                                    spreadRadius: 0.1),
                                              ],
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Colors.white,
                                            ),
                                            width: double.infinity,
                                            height: 60,
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Row(
                                                    children: [
                                                      Container(
                                                        margin: const EdgeInsets
                                                            .only(left: 10),
                                                        decoration: BoxDecoration(
                                                            color: Colors.amber,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8)),
                                                        width: 40,
                                                        height: 40,
                                                      ),
                                                      const SizedBox(
                                                        width: 10,
                                                      ),
                                                      Column(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: const [
                                                          Text('Incentive'),
                                                          Text('12:15 Am'),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                  const Text(
                                                    'USD 0.00',
                                                    style: TextStyle(
                                                        color: Colors.green),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Text('dara'),
                      const Text('sokha'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
