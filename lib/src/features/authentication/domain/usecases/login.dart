import 'package:dartz/dartz.dart';
import '../../../../core/error/error.dart';
import '../../../../core/usecase/usecase.dart';
import '../../data/models/login/login.dart';
import '../repository/auth.dart';

class LoginUseCase extends UseCase<dynamic, LoginParams> {
  final IAuthRepository _authRepository;

  LoginUseCase(this._authRepository);

  @override
  Future<Either<Failure, dynamic>> call(LoginParams params) =>
      _authRepository.login(params);
}

class LoginParams {
  final LoginRequest request;

  LoginParams(this.request);
}
