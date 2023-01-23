import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:gym_app/model/city_model.dart';
import 'package:gym_app/service/errorcode.dart';

class GymsCityService {
  GymsCityService._instans();
  static GymsCityService instance = GymsCityService._instans();
  factory GymsCityService() {
    return instance;
  }
  ErrorCode errorCode = ErrorCode();

  Future<GymsCitys?> nearbyTurf(String token) async {
    try {
      Response response = await Dio().get(
        "https://api.wtfup.me/gym/cities",
        options: Options(headers: {"Authorization": "Bearer $token"}),
      );
      if (response.statusCode == 200) {
        print(response.data);
        const SnackBar(
          content: Text("Login successfully"),
          backgroundColor: Color.fromARGB(255, 97, 98, 97),
        );
        return GymsCitys.fromJson(response.data);
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
