import 'dart:convert';

import 'package:advicer/0_data/model/advice_model.dart';
import 'package:http/http.dart' as http;

abstract class AdviceRemoteDatasource {
  /// request random advice from api
  /// returns [AdviceModel] if successfull
  /// thows a server-Exception if status code is not 200
  Future<AdviceModel> getRandomAdviceFromApi();
}

class AdviceRemoteDatasourceImpl implements AdviceRemoteDatasource {
  final client = http.Client();
  @override
  Future<AdviceModel> getRandomAdviceFromApi() async {
    final response = await client.get(
        Uri.parse('https://api.flutter-community.de/api/v1/advice'),
        headers: {'content-type': 'application/json'});
    final responseBody = jsonDecode(response.body);
    return AdviceModel.fromJson(responseBody);
  }
}
