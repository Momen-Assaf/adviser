import 'package:advicer/1_domain/entities/advice_entity.dart';

class AdviceUsecases {
  Future<AdviceEntity> getAdvice() async {
    //call a repository to get data (try/catch)
    //proceed with business logic (manipulate data)
    await Future.delayed(const Duration(seconds: 3));
    return const AdviceEntity(id: 1, advice: "Advice to test");
  }
}
