import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';

abstract class LocalizedMessage {
  String getLocalizedMessage(BuildContext context);
}

abstract class Failure extends Equatable implements LocalizedMessage {
  const Failure();

  @override
  List<Object> get props => [];
}

class ServerFailure extends Failure {
  final int? statusCode;

  const ServerFailure(this.statusCode) : super();

  @override
  List<Object> get props => [statusCode ?? 0];

  @override
  String getLocalizedMessage(BuildContext context) =>
      'Server Error $statusCode';
}

class WrongCodeFailure extends Failure {
  const WrongCodeFailure() : super();

  @override
  String getLocalizedMessage(BuildContext context) =>
      AppLocalizations.of(context).WrongCode;
}