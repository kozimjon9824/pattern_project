import 'package:dartz/dartz.dart';
import 'package:pattern_project/src/features/authentication/data/models/verify/request/verify.dart';
import '../../../../core/error/error.dart';
import '../../data/models/verify/response/verify_response.dart';

abstract class IAuthRepository {
  Future<Either<Failure, dynamic>> login(dynamic request);

  Future<Either<Failure, VerifyResponse>> verify(VerifyRequest request);
// Future<Either<Failure, bool>> checkUserAuth();
// Future<Either<Failure, bool>> logout();
}
