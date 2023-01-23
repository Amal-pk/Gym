import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:gym_app/core/const.dart';
import 'package:gym_app/model/city_model.dart';
import 'package:gym_app/model/gymdetails_model.dart';
import 'package:gym_app/service/gymcity_service.dart';
import 'package:gym_app/service/gymdetails_service.dart';

class CategoryController extends ChangeNotifier {
  bool check = false;
  List<Datum> near = [];
  bool isSearchClick = false;
  bool isLoading = false;
  List<Details> details = [];

  void checking() {
    check = !check;
    notifyListeners();
  }

  nearbyTruff() async {
    isLoading = true;
    GymsCitys? gymResponse = await GymsCityService.instance.nearbyTurf(token);
    log(gymResponse!.status.toString());
    if (gymResponse.status == true) {
      near.clear();
      near.addAll(gymResponse.data);
    }

    isLoading = false;
    notifyListeners();
  }

  getGym() async {
    isLoading = true;
    GymsDetails? gymdetailResponse = await GymsDetailsService.instance.getGym();
    // log(gymdetailResponse!.status.toString());
    if (gymdetailResponse!.status == true) {
      details.clear();
      details.addAll(gymdetailResponse.data);
      log(details.toString());
    }

    isLoading = false;
    notifyListeners();
  }
}
