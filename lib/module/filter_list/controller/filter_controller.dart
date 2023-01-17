import 'package:get/get.dart';
import 'package:silver_app_bar/api/api_base_helper.dart';
import 'package:silver_app_bar/module/filter_list/model/filter_model/filter_model.dart';

class FilterController extends GetxController {
  @override
  void onInit() {
    getFilter();
    // getUser();
    // Get called when controller is created
    super.onInit();
  }

  //GetFilter
  final isloadingFilter = false.obs;
  final apiBaseHelper = ApiBaseHelper();
  final filtermodel = FilterModel();
  final filtermodelList = <FilterModel>[].obs;
  Future<List<FilterModel>> getFilter() async {
    isloadingFilter(true);
    await apiBaseHelper
        .onNetworkRequesting(
      url: 'v4/option',
      methode: METHODE.get,
      isAuthorize: false,
    )
        .then(
      (res) {
        print('Success');
        res['directory_filter'].map(
          (e) {
            filtermodelList.add(FilterModel.fromJson(e));
          },
        ).toList();
        print(filtermodelList.length);
      },
    );
    isloadingFilter(false);
    return filtermodelList;
  }
}
