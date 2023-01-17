import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:silver_app_bar/api/api_base_helper.dart';
import 'package:silver_app_bar/module/direactory/model/meta_model/meta_model.dart';

import '../model/member_model/member_model.dart';

class MemberController extends GetxController {
  TextEditingController searchController = TextEditingController();
  final apibasehelper = ApiBaseHelper();
  final membermodel = MemberModel().obs;
  final membermodelList = <MemberModel>[].obs;
  final isloadingMember = false.obs;
  final isLoadingPagination = false.obs;
  // final valuesearch = ''.obs;
  final isloadingImage = false.obs;
  final currentPage = 1.obs;
  final lastPage = 1.obs;
  final meta = MetaModel().obs;

  // final hideme = false.obs;
  Future<List<MemberModel>> getMember(
      {String? valuesearch, int? hideme}) async {
    if (currentPage.value == 1) {
      isloadingMember(true);
      isLoadingPagination(false);
      update();
    } else {
      isLoadingPagination(true);
      update();
    }

    await apibasehelper
        .onNetworkRequesting(
      url: hideme == 1
          ? 'v4/member?fillter=$valuesearch&page=${currentPage.value}&hide_me=1'
          : 'v4/member?fillter=$valuesearch&page=${currentPage.value}',
      methode: METHODE.get,
      isAuthorize: true,
    )
        .then((res) {
      print('Success');
      meta.value = MetaModel.fromJson(res['meta']);
      if (currentPage.value == 1) {
        membermodelList.clear();
      }
      res['data'].map((e) {
        membermodelList.add(MemberModel.fromJson(e));

        update();
      }).toList();
      if (currentPage.value < meta.value.perPage!) {
        currentPage.value++;
        update();
      }

      membermodelList.map((e) {
        debugPrint(
            "Get ID and Name #########################: ${e.id} and ${e.name}");
      }).toList();

      debugPrint("==========================${isLoadingPagination.value}");
      debugPrint("###########################${membermodelList.length}");

      isLoadingPagination(false);
      isloadingMember(false);
    }).onError((ErrorModel error, _) {
      print('Error${error.bodyString}');
      isLoadingPagination(false);
      isloadingMember(false);
    });

    return membermodelList;
  }

  // void search(String query){
  //   final suggest = membermodelList.where((p0){
  //     final title = p0.name;
  //     final input = query.toLowerCase();
  //     return membermodelList.contains(input);
  //   }).toList();

  // }
}
