import 'package:advicer/1_domain/entities/advice_entity.dart';
import 'package:advicer/1_domain/failures/failures.dart';
import 'package:dartz/dartz.dart';

class AdviceUsecases {
  Future<Either<Failures, AdviceEntity>> getAdvice() async {
    //call a repository to get data (try/catch)
    //proceed with business logic (manipulate data)
    await Future.delayed(const Duration(seconds: 3));
    //call from repo went good:
    // return right(const AdviceEntity(id: 1, advice: "Advice to test"));
    //call from repo failed:
    return left(CacheFailure());
  }
}
