// import 'dart:convert';

// import 'package:advicer/0_data/datasources/advice_remote_datasource.dart';
// import 'package:advicer/0_data/model/advice_model.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:http/http.dart' as http;
// import 'package:http/testing.dart';
// import 'package:mockito/mockito.dart';
// import 'package:mockito/annotations.dart';

// @GenerateNiceMocks([MockSpec<http.Client>()])
// void main() {
//   group("AdviceRemoteDataSource", () {
//     group("should return AdviceModel", () {
//       test('when client respnse was 200 and has valid data', () async {
//         final mockClient = MockClient((request) async {
//           when(http.get(url))
//           Uri.parse('https://api.flutter-community.de/api/v1/advice'),
//                 headers: {'content-type': 'application/json'}))
//             .thenAnswer((realInvocation) => Future.value(http.Response(
//                 jsonEncode({'advice': 'test advice', 'advice_id': '1'}), 200)));
//           // return http.Response(
//           //     jsonEncode({ 'advice_id': '1', 'advice': 'test advice'}), 200);
//         });
//         final adviceRemoteDatasourceUnderTest =
//             AdviceRemoteDatasourceImpl(client: mockClient);

//         // when(mockClient.get(
//         //         Uri.parse('https://api.flutter-community.de/api/v1/advice'),
//         //         headers: {'content-type': 'application/json'}))
//         //     .thenAnswer((realInvocation) => Future.value(http.Response(
//         //         jsonEncode({'advice': 'test advice', 'advice_id': '1'}), 200)));

//         final result =
//             await adviceRemoteDatasourceUnderTest.getRandomAdviceFromApi();
//         expect(result, AdviceModel(id: 1, advice: 'test advice'));
//       });
//     });
//   });
// }
