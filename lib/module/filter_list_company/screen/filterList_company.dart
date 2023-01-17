import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:silver_app_bar/module/direactory/debouncer/debound.dart';
import 'package:silver_app_bar/module/direactory/widget/directory_textformfiled.dart';
import 'package:silver_app_bar/module/filter_list/screen/filter_list.dart';
import 'package:silver_app_bar/module/filter_list_company/controller/filter_list_company_controller.dart';
import 'package:silver_app_bar/module/login/Util/app_color.dart';

class FilterListCompany extends StatelessWidget {
  FilterListCompany({super.key, this.check});
  final conFilterCompany = Get.put(FilterListCompanyController());
  final debonceCompany = Debouncer(milliseconds: 1000);
  final bool? check;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => FilterList(),
                ));
          },
          child: SvgPicture.asset('assets/svg/Close-Icon.svg',
              fit: BoxFit.scaleDown, color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Company',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          GetBuilder<FilterListCompanyController>(
            init: FilterListCompanyController(),
            initState: (_) {},
            builder: (con) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: con.countList.isEmpty
                      ? Text(
                          'Reset',
                          style: TextStyle(
                              color: con.countList.isEmpty
                                  ? Colors.grey
                                  : Colors.blue,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        )
                      : GestureDetector(
                          onTap: () {
                            con.isloadingCheck.value = false;
                            // conFilterCompany.countList.clear();
                            con.countList.clear();
                            if (con.countList.isEmpty) {
                              debugPrint("----------------- check false");
                              con.getFilterCompany();
                              //  conFilterCompany.isloadingCheck.value = false;
                            }
                            debugPrint("-------- list : ${con.countList}");

                            // con.getFilterCompany();
                            print('object');
                            con.update();
                          },
                          child: Text(
                            'Reset',
                            style: TextStyle(
                                color: con.countList.isEmpty
                                    ? Colors.grey
                                    : Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 16),
                          ),
                        ),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: conFilterCompany.isLoadingFilterListCompany.value
                  ? const Center(
                      child: CircularProgressIndicator(),
                    )
                  : Container(
                      color: Colors.red,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: DirectoryTextFromFiled(
                            onChanged: (value) {
                              print(value);
                              debonceCompany.run(() {
                                conFilterCompany.getFilterCompanySearch(
                                    searchValueCompany: conFilterCompany
                                        .searchValueCompanyController.text);
                              });
                            },
                            controller:
                                conFilterCompany.searchValueCompanyController,
                            filled: true,
                            fillColor: Colors.green,
                          ),
                        ),
                      ),
                    )),
          Expanded(
              flex: 7,
              child: Container(
                  color: Colors.black,
                  child: GetBuilder(
                    init: FilterListCompanyController(),
                    initState: (_) {},
                    builder: (conFilterCompany) {
                      return SingleChildScrollView(
                        child: Obx(() => Column(
                              children: [
                                ...conFilterCompany.filterListCompanyModelList
                                    .asMap()
                                    .entries
                                    .map((element) {
                                  return InkWell(
                                    onTap: () {
                                      conFilterCompany.isloadingCheck.value =
                                          true;
                                      var count = 0;
                                      element.value.check =
                                          !element.value.check;
                                      // count++;
                                      if (element.value.check) {
                                        conFilterCompany.countList.add(count);
                                      } else {
                                        conFilterCompany.countList
                                            .removeAt(count);
                                      }
                                      debugPrint(
                                          'Count:${conFilterCompany.countList.length}');

                                      // element.value.check = true;
                                      // element.value.check = false;

                                      conFilterCompany.update();
                                      print('object');
                                    },
                                    child: Container(
                                      margin: const EdgeInsets.only(bottom: 1),
                                      width: double.infinity,
                                      height: 30,
                                      color: Colors.yellow,
                                      child: Row(
                                        children: [
                                          GetBuilder<
                                              FilterListCompanyController>(
                                            init: FilterListCompanyController(),
                                            initState: (_) {},
                                            builder: (conFilterCompany) {
                                              return Checkbox(
                                                value: element.value.check,
                                                onChanged: (e) {
                                                  conFilterCompany
                                                      .isloadingCheck
                                                      .value = true;
                                                  var count = 0;
                                                  element.value.check =
                                                      !element.value.check;
                                                  // count++;
                                                  if (element.value.check) {
                                                    conFilterCompany.countList
                                                        .add(count);
                                                  } else {
                                                    conFilterCompany.countList
                                                        .removeAt(count);
                                                  }
                                                  conFilterCompany.update();
                                                  debugPrint(
                                                      'Count:${conFilterCompany.countList.length}');
                                                },
                                              );
                                            },
                                          ),
                                          Text(
                                            '${element.value.display}',
                                            style: TextStyle(
                                                color: element.value.check
                                                    ? Colors.blue
                                                    : Colors.black),
                                          )
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                              ],
                            )),
                      );
                    },
                  )))
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: SizedBox(
          width: double.infinity,
          height: 100,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(left: 10, top: 20, bottom: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    // color: Colors.red,
                    border: Border.all(color: AppColor.mainColor),
                  ),
                  alignment: Alignment.center,
                  // width: 10,
                  // height: 10,
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                        color: AppColor.mainColor, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(
                      left: 10, top: 20, bottom: 20, right: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.grey,
                    // border: Border.all(color: Colors.blue),
                  ),
                  alignment: Alignment.center,
                  // width: 10,
                  // height: 10,
                  child: GetBuilder<FilterListCompanyController>(
                    init: FilterListCompanyController(),
                    initState: (_) {},
                    builder: (conFilterCompany) {
                      return conFilterCompany.countList.isEmpty
                          ? const Text(
                              'Selected',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )
                          : InkWell(
                              onTap: () {
                                print('yes');
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => FilterList(
                                          itemCount: conFilterCompany
                                              .countList.length),
                                    ));
                              },
                              child: Text(
                                'Selected(${conFilterCompany.countList.length})',
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                            );
                    },
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
