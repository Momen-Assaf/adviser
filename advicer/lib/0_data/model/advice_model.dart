import 'package:advicer/1_domain/entities/advice_entity.dart';
import 'package:equatable/equatable.dart';

class AdviceModel extends AdviceEntity with EquatableMixin {
  /// [Advice Model] is a json parser that
  /// Converts the json data into a [AdviceEntity] object
  AdviceModel({required super.id, required super.advice});

  factory AdviceModel.fromJson(Map<String, dynamic> json) {
    return AdviceModel(id: json['advice_id'], advice: json['advice']);
  }
}
