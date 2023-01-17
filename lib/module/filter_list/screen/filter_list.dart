import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:silver_app_bar/module/filter_list/controller/filter_controller.dart';
import 'package:silver_app_bar/module/filter_list_company/controller/filter_list_company_controller.dart';
import 'package:silver_app_bar/module/filter_list_company/screen/filterList_company.dart';
import 'package:silver_app_bar/module/login/Util/app_color.dart';

class FilterList extends StatelessWidget {
  FilterList({super.key, this.itemCount});
  final int? itemCount;
  final conFilter = Get.put(FilterController());
  final confilterCom = Get.put(FilterListCompanyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          // color: Colors.red,
          child: SvgPicture.asset('assets/svg/Close-Icon.svg',
              fit: BoxFit.scaleDown, color: Colors.black87),
        ),
        backgroundColor: Colors.white,
        title: const Text(
          'Filters',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Obx(
        () => conFilter.isloadingFilter.value
            ? const Center(child: CircularProgressIndicator())
            : Column(
                children: [
                  InkWell(
                    onTap: () {
                      print('tan');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FilterListCompany(),
                          ));
                    },
                    child: ListTile(
                      leading: Text('${conFilter.filtermodelList[0].display}'),
                      trailing: const Icon(Icons.forward),
                      title: Padding(
                        padding: const EdgeInsets.only(left: 230),
                        child: confilterCom.countList.isEmpty
                            ? Container()
                            : CircleAvatar(
                                minRadius: 10,
                                child: Text(
                                  '$itemCount',
                                  style: const TextStyle(fontSize: 14),
                                ),
                              ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      print('tan');
                    },
                    child: ListTile(
                      leading: Text('${conFilter.filtermodelList[1].display}'),
                      trailing: const Icon(Icons.forward),
                    ),
                  ),
                ],
              ),
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
                    'Clear',
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
                  child: const Text(
                    'Show Result',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
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
