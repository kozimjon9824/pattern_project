import 'package:pattern_project/src/core/utils/enums.dart';
import 'package:pattern_project/src/features/authentication/data/models/login/login.dart';
import 'package:pattern_project/src/features/authentication/data/models/verify/request/verify.dart';
import 'package:pattern_project/src/features/authentication/data/models/verify/response/verify_response.dart';

import '../../../../core/network/network_client.dart';

abstract class IAuthRemoteDataSource {
  Future login(LoginRequest request);

  Future<VerifyResponse> verify(VerifyRequest request);
}

class AuthRemoteDataSource implements IAuthRemoteDataSource {
  final NetworkClient _client;

  AuthRemoteDataSource(this._client);

  @override
  Future login(LoginRequest request) async {
    final response = await _client.apiCall(
        endpoint: 'auth/login',
        body: request.toJson(),
        requestType: RequestType.POST);
    return response;
  }

  @override
  Future<VerifyResponse> verify(VerifyRequest request) async {
    final response = await _client.apiCall(
        endpoint: 'auth/otp',
        body: request.toJson(),
        requestType: RequestType.POST);
    return response;
  }
}
