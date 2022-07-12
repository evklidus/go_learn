import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:golearn/features/home/domain/entities/recomendation_entity.dart';

part 'recomendation_model.freezed.dart';
part 'recomendation_model.g.dart';

@freezed
class RecomendationModel extends RecomendationEntity with _$RecomendationModel {
  const factory RecomendationModel({
    required int id,
    required String imageUrl,
    required String authorName,
    required int price,
    required double stars,
    required int studentsCount,
    required String title,
  }) = _RecomendationModel;

  factory RecomendationModel.fromJson(Map<String, Object?> json) => _$RecomendationModelFromJson(json);
}
