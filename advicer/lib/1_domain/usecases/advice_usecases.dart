import 'package:advicer/1_domain/entities/advice_entity.dart';
import 'package:advicer/1_domain/failures/failures.dart';
import 'package:advicer/1_domain/repositories/advice_repo.dart';
import 'package:dartz/dartz.dart';

class AdviceUsecases {
  final AdviceRepo adviceRepo;
  AdviceUsecases({required this.adviceRepo});

  Future<Either<Failures, AdviceEntity>> getAdvice() async {
    return adviceRepo.getAdviceFromDataSource();
    //space for business logic
  }
}
