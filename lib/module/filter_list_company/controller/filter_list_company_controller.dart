import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:silver_app_bar/api/api_base_helper.dart';
import 'package:silver_app_bar/module/filter_list_company/model/filter_company_model/filter_company_model.dart';

class FilterListCompanyController extends GetxController {
  @override
  void onInit() {
    getFilterCompany();
    getFilterCompanySearch(
        searchValueCompany: searchValueCompanyController.text);
    // getUser();
    // Get called when controller is created
    super.onInit();
  }

//
  List<int> countList = [];

  final isLoadingFilterListCompany = false.obs;
  final isLoadingReset = false.obs;
  final isloadingCheck = false.obs;
  final filterListCompanyModel = CompanyModel();
  final filterListCompanyModelList = <CompanyModel>[].obs;
  final apiBaseHelper = ApiBaseHelper();
  Future<List<CompanyModel>> getFilterCompany() async {
    isLoadingFilterListCompany(true);
    await apiBaseHelper
        .onNetworkRequesting(
      url: 'v4/fetch-option-by-type?type=company',
      methode: METHODE.get,
      isAuthorize: false,
    )
        .then(
      (res) {
        filterListCompanyModelList.clear();
        res['data'].map((e) {
          filterListCompanyModelList.add(
            CompanyModel.fromJson(e),
          );
        }).toList();
        print('Lenght');
        print(filterListCompanyModelList.length);
      },
    );
    isLoadingFilterListCompany.value = false;
    return filterListCompanyModelList;
  }

  ///Search List Company
  TextEditingController searchValueCompanyController = TextEditingController();
  final isLoadingFilterListCompanySearch = false.obs;

  Future<List<CompanyModel>> getFilterCompanySearch(
      {String? searchValueCompany}) async {
    isLoadingFilterListCompanySearch.value = true;
    await apiBaseHelper
        .onNetworkRequesting(
      url: 'v4/option/search?type=company&&search=$searchValueCompany',
      methode: METHODE.get,
      isAuthorize: false,
    )
        .then(
      (res) {
        filterListCompanyModelList.clear();
        res['data'].map((e) {
          filterListCompanyModelList.add(
            CompanyModel.fromJson(e),
          );
        }).toList();
      },
    );
    isLoadingFilterListCompanySearch.value = false;
    return filterListCompanyModelList;
  }
}
