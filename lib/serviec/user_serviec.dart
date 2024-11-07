import 'package:dio/dio.dart';

import '../models/class.dart';

class prayer_serviec
{
  static Dio dio=Dio();
  static Future<UserProfile> getuserprofile() async {
    try {
      const url = 'https://randomuser.me/api/';
      Response response = await dio.get(url);
      if (response.statusCode == 200) {
        return UserProfile.fromJson(response.data['results'][0]);
      } else {
        throw Exception('Failed to the user data');
      }
    } catch (e) {
      throw Exception('Error: $e');
    }
  }

}

