import 'package:dartz/dartz.dart';

import '../../../../core/error/error.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/models/verify/request/verify.dart';
import '../../data/models/verify/response/verify_response.dart';
import '../repository/auth.dart';

class VerifyUseCase extends UseCase<VerifyResponse, VerifyParams> {
  final IAuthRepository _authRepository;

  VerifyUseCase(this._authRepository);

  @override
  Future<Either<Failure, VerifyResponse>> call(VerifyParams params) =>
      _authRepository.verify(params.request);
}

class VerifyParams {
  final VerifyRequest request;

  VerifyParams(this.request);
}
