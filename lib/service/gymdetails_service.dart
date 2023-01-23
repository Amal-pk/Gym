import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/model/gymdetails_model.dart';
import 'package:gym_app/service/errorcode.dart';

class GymsDetailsService {
  GymsDetailsService._instans();
  static GymsDetailsService instance = GymsDetailsService._instans();
  factory GymsDetailsService() {
    return instance;
  }
  ErrorCode errorCode = ErrorCode();

  Future<GymsDetails?> getGym() async {
    try {
      Response response = await Dio().get(
        "https://api.wtfup.me/gym/nearestgym?lat=28.596669322602807&long=77.32866249084584&type",
      );
      // options: Options(headers: {"Authorization": "Bearer $token"}),
      // ’filtercityname’$location=’filterLocation’
      if (response.statusCode == 200) {
        print(response.data);
        const SnackBar(
          content: Text("Login successfully"),
          backgroundColor: Color.fromARGB(255, 97, 98, 97),
        );
        return GymsDetails.fromJson(response.data);
      }
    } on DioError catch (e) {
      return errorCode.status401(e);
    } catch (e) {
      const SnackBar(
        content: Text('Error Founded'),
        backgroundColor: Color.fromARGB(255, 47, 48, 47),
      );
    }
    return null;
  }
}
