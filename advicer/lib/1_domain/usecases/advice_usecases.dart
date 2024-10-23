class AdviceUsecases {
  Future<String> getAdvice() async {
    //call a repository to get data (try/catch)
    //proceed with business logic (manipulate data)
    await Future.delayed(const Duration(seconds: 3));
    return 'fake advice from testcase';
  }
}
