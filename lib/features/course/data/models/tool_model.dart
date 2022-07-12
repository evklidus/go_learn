import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:golearn/features/course/domain/entities/tool_entity.dart';

part 'tool_model.freezed.dart';
part 'tool_model.g.dart';

@freezed
class ToolModel extends ToolEntity with _$ToolModel {
  const factory ToolModel({
    required String imageUrl,
    required String name,
  }) = _ToolModel;

  factory ToolModel.fromJson(Map<String, Object?> json) => _$ToolModelFromJson(json);
}
