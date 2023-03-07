import 'package:dio/dio.dart';
import 'package:pattern_project/src/core/constants/constants.dart';
import '../utils/enums.dart';
import 'auth_interceptor.dart';
import 'log_interceptor.dart';

class NetworkClient {
  late final Dio dio;

  Future<Dio> createDio() async {
    dio = Dio(BaseOptions(
      baseUrl: BASE_URL,
      receiveTimeout: 20000, // 20 seconds
      connectTimeout: 20000,
      sendTimeout: 20000,
    ));

    dio.interceptors.addAll({
      AuthInterceptor(dio),
    });
    dio.interceptors.addAll({
      Logging(dio),
    });

    return dio;
  }

  Future<Response> apiCall(
      {required String endpoint,
      Map<String, dynamic>? queryParameters,
      Map<String, dynamic>? body,
      required RequestType requestType}) async {
    Response result;
    switch (requestType) {
      case RequestType.GET:
        {
          Options options = Options(headers: header);
          result = await dio.get(endpoint,
              queryParameters: queryParameters, options: options);
          break;
        }
      case RequestType.POST:
        {
          Options options = Options(headers: header);
          result = await dio.post(endpoint, data: body, options: options);
          break;
        }
      case RequestType.DELETE:
        {
          Options options = Options(headers: header);
          result = await dio.delete(endpoint,
              data: queryParameters, options: options);
          break;
        }
      case RequestType.PUT:
        {
          Options options = Options(headers: header);
          result =
              await dio.put(endpoint, data: queryParameters, options: options);
          break;
        }
      case RequestType.PATCH:
        {
          Options options = Options(headers: header);
          result = await dio.patch(endpoint,
              data: queryParameters, options: options);
          break;
        }
    }
    return result;
  }
}

final Map<String, String> header = {
  'Content-type': 'application/json',
  'Accept': 'application/json',
  // 'client-secret': 'xyz',
  // 'client-id': 'abc',
  // 'package-name': 'com.sasa.abc',
  // 'platform': 'android',
  // 'Authorization': "access_token"
};
