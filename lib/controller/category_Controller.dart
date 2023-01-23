import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gym_app/model/city_model.dart';
import 'package:gym_app/service/gym_service.dart';

class CategoryController extends ChangeNotifier {
  bool check = false;
  List<Datum> near = [];
  bool isSearchClick = false;
  bool isLoading = false;
  String token =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1aWQiOiJWTWRSeFpwQjdlSEw4IiwibmFtZSI6Ik5hcmVzaCBLdWtyZXRpIiwiaWF0IjoxNjUzNTYxMzQ3LCJleHAiOjE2NTYxNTMzNDd9.ft4yHKVsWHA_LTTSmLi8EHCAEb359nXRoxr43ZJ6Whs";
  void checking() {
    check = !check;
    notifyListeners();
  }

  nearbyTruff() async {
    isLoading = true;

    GymsCitys? gymResponse =
        await GymsCityService.instance.nearbyTurf(token);
    log(gymResponse!.status.toString());
    if (gymResponse.status == true) {
      near.clear();
      near.addAll(gymResponse.data);
    }

    isLoading = false;
    notifyListeners();
  }
}
