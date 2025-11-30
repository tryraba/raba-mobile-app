// ignore_for_file: one_member_abstracts, document_ignores

import 'package:equatable/equatable.dart';
import 'package:raba_mobile/src/core/error/failure.dart';
import 'package:raba_mobile/src/core/utils/either.dart';

///
/// UseCase is called with Failure or some type of data representation
///
///
abstract class UseCase<DataType, Params> {
  Future<Either<Failure, DataType>> call(Params params);
}

///
/// No params if the data object is in local cache
///
class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
