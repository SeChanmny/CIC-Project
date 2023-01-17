import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:silver_app_bar/module/direactory/widget/directory_textformfiled.dart';
import 'package:silver_app_bar/module/filter_list/screen/filter_list.dart';
import 'package:silver_app_bar/module/filter_list_company/controller/filter_list_company_controller.dart';
import 'package:silver_app_bar/module/login/Util/app_color.dart';
import 'package:silver_app_bar/module/login/controller/getx_controller.dart';
import 'package:silver_app_bar/module/login/page/profile_screen.dart';
import 'package:silver_app_bar/module/profile/page/home_page.dart';

import '../../profile/util/app_color.dart';
import '../controller/member_controller.dart';
import '../debouncer/debound.dart';

class MyWidget extends StatefulWidget {
  // final nameUserProfile
  final int? hideme;
  const MyWidget({super.key, this.hideme});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  final conUserProfile = Get.put(ProfileController());
  final confilterCom = Get.put(FilterListCompanyController());
  final con = Get.put(MemberController());
  // @override
  // // ignore: must_call_super
  // initState() {
  //   debugPrint('FullName${conUserProfile.usermodel.value.fullName}');
  //   con.searchController.text = '';
  //   // con.membermodelList.clear();
  //   // ignore: avoid_print
  //   print("initState Called");
  // }

  ScrollController scrollController = ScrollController();
  // final de = Debouncer(delay: const Duration(milliseconds: 2000));
  final de = Debouncer(milliseconds: 1000);
  // @override
  // void initState() {
  //   debugPrint('ppppppppppppppppppppppppppp');
  //   conUserProfile.getUser(memberId: conUserProfile.usermodel.value.id);
  //   debugPrint('UserID Pro${conUserProfile.usermodel.value.fullName}');
  //   print(
  //       'UserID:${conUserProfile.getUser(memberId: conUserProfile.usermodel.value.id)}');

  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeProfile(),
                  ));
            },
            child: Container(
              margin: const EdgeInsets.only(right: 15),
              child: SvgPicture.asset('assets/svg/question.svg'),
            ),
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

                con.update();
              },
              child: GestureDetector(
                onTap: () async {
                  await Navigator.push(
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
              backgroundColor: Colors.transparent,
              leading: const Text(''),
              elevation: 0,
              expandedHeight: 70.0,
              // floating: true,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: DirectoryTextFromFiled(
                    suffixIcon: InkWell(
                        onTap: () {
                          print('object');
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FilterList(),
                              ));
                        },
                        child: const Icon(Icons.filter_list)),
                    fillColor: Colors.grey.withOpacity(0.5),
                    filled: true,
                    controller: con.searchController,
                    onChanged: (value) {
                      // con.valuesearch.value = value;
                      de.run(() {
                        debugPrint('Requested Search ${con.currentPage.value}');
                        con.currentPage.value = 1;
                        if (widget.hideme == 1) {
                          con.getMember(
                              valuesearch: con.searchController.text,
                              hideme: 1);
                        } else {
                          con.getMember(valuesearch: con.searchController.text);
                        }
                      });
                    },
                  ),
                ),
              ),
            ),
          ];
        },
        body: Obx(() => NotificationListener<ScrollUpdateNotification>(
              onNotification: (scroll) {
                if (scroll.metrics.pixels == scroll.metrics.maxScrollExtent) {
                  con.getMember(valuesearch: con.searchController.text);
                }
                return false;
              },
              child: con.isloadingMember.value
                  ? const Center(child: CircularProgressIndicator())
                  : SizedBox(
                      child: Stack(
                        children: [
                          ListView.builder(
                            physics: const AlwaysScrollableScrollPhysics(),
                            itemCount: con.membermodelList.length,
                            itemBuilder: (context, index) => Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    debugPrint(
                                        'hiiiiii${conUserProfile.usermodel.value.id}');
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => MyApp(
                                              userName: con
                                                  .membermodelList[index].name),
                                        ));
                                  },
                                  child: Container(
                                    margin: const EdgeInsets.only(bottom: 1),
                                    width: double.infinity,
                                    height: 100,
                                    decoration: const BoxDecoration(
                                        color: Colors.transparent),
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        CachedNetworkImage(
                                          errorWidget: (context, url, error) =>
                                              Container(
                                            width: 60,
                                            height: 60,
                                            decoration: BoxDecoration(
                                                color: AppColor.mainColor,
                                                shape: BoxShape.circle),
                                            child: Center(
                                                child: Text(
                                                    style: const TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.white),
                                                    '${con.membermodelList[index].defaultPhoto}')),
                                          ),
                                          placeholder: (context, url) =>
                                              const CircularProgressIndicator(),
                                          imageUrl:
                                              '${con.membermodelList[index].profile}',
                                          imageBuilder:
                                              (context, imageProvider) =>
                                                  Container(
                                            width: 60,
                                            height: 60,
                                            decoration: BoxDecoration(
                                              color: AppColor.mainColor,
                                              shape: BoxShape.circle,
                                              image: DecorationImage(
                                                  image: imageProvider,
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                        ),
                                        // const SizedBox(
                                        //   width: 100,
                                        //   height: 100,

                                        //   // child: CachedNetworkImage(
                                        //   //     errorWidget:
                                        //   //         (context, url, error) =>
                                        //   //             const Icon(Icons.error),
                                        //   //     imageUrl:
                                        //   //         '${con.membermodelList[index].profile}')
                                        //   // child: con.membermodelList[index]
                                        //   //             .profile !=
                                        //   //         null
                                        //   //     ? Image(
                                        //   //         image: NetworkImage(
                                        //   //             '${con.membermodelList[index].profile}'))
                                        //   //     : Text(
                                        //   //         '${con.membermodelList[index].defaultPhoto}'),
                                        // ),

                                        // CircleAvatar(
                                        //   backgroundImage: con
                                        //                   .membermodelList[index]
                                        //                   .profile ==
                                        //               'null' ||
                                        //           con.membermodelList[index]
                                        //                   .profile ==
                                        //               null
                                        //       ? const NetworkImage('')
                                        //       : NetworkImage(
                                        //           '${con.membermodelList[index].profile}'),
                                        //   maxRadius: 30,
                                        //   child: con.membermodelList[index]
                                        //                   .profile ==
                                        //               'null' ||
                                        //           con.membermodelList[index]
                                        //                   .profile ==
                                        //               null
                                        //       ? Text(con.membermodelList[index]
                                        //           .defaultPhoto
                                        //           .toString())
                                        //       : const Text(''),
                                        // ),
                                        const SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                                style: const TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                                '${con.membermodelList[index].name}'),
                                            const SizedBox(height: 6),
                                            Text(
                                                '${confilterCom.filterListCompanyModelList[index].display}')
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const Divider(),
                              ],
                            ),
                          ),
                          con.isLoadingPagination.value
                              ? const Align(
                                  alignment: Alignment.bottomCenter,
                                  child: CupertinoActivityIndicator())
                              : Container()
                        ],
                      ),
                    ),
            )),
      ),
    );
  }
}
