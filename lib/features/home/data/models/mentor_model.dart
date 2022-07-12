import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:golearn/features/home/domain/entities/mentor_entity.dart';

part 'mentor_model.freezed.dart';
part 'mentor_model.g.dart';

@freezed
class MentorModel extends MentorEntity with _$MentorModel {
  const factory MentorModel({
    required String imageUrl,
    required String name,
  }) = _MentorModel;

  factory MentorModel.fromJson(Map<String, Object?> json) => _$MentorModelFromJson(json);
}
