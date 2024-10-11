

import 'package:assignment_oct/app/core/snackbar/my_snackbar.dart';
import 'package:assignment_oct/app/models/galary_model.dart';
import 'package:assignment_oct/app/repository/end_urls/end_url.dart';
import 'package:get/get.dart';

import '../../../../../core/isResponseOk.dart';
import '../../../../../repository/api_services/api_services.dart';

class GalaryController extends GetxController {
  final ApiServices _apiServices = ApiServices();
  final EndUrl _endUrl = EndUrl();
  RxBool isLoading = false.obs;
  var galaryModel = GalaryModel().obs;
  void setLoading(value) {
    isLoading.value = value;
  }

  void fetchImags() async {
    setLoading(true);
    var resp = await _apiServices.getRequest(endurl: _endUrl.getImgEndUrl());

    if (resp == null) {
      SnackBars.showErrorSnackBar(text: "Something went wrong");
      setLoading(false);
    } else {
      if (CheckRStatus.checkResStatus(statusCode: resp.statusCode)) {
        GalaryModel apiResponse = GalaryModel.fromJson(resp.data);

        galaryModel.value = apiResponse;

        setLoading(false);
      }
      setLoading(false);
    }
  }

  @override
  void onInit() {
    super.onInit();
    fetchImags();
  }
}
