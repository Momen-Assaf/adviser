import 'package:advicer/1_domain/entities/advice_entity.dart';
import 'package:advicer/1_domain/failures/failures.dart';
import 'package:advicer/1_domain/repositories/advice_repo.dart';
import 'package:dartz/dartz.dart';

class AdviceRepoImpl implements AdviceRepo {
  @override
  Future<Either<Failures, AdviceEntity>> getAdviceFromDataSource() {
    // TODO: implement getAdviceFromDataSource
    throw UnimplementedError();
  }
}
