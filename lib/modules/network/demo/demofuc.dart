import 'package:dio/dio.dart';

Future<String> getBaidu() async {
  try {
    Response response = await Dio().get("http://www.baidu.com");
    return response.data;
  } catch (e) {
    return e.toString();
  }
}
