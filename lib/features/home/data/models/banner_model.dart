import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:golearn/features/home/domain/entities/banner_entity.dart';

part 'banner_model.freezed.dart';
part 'banner_model.g.dart';

@freezed
class BannerModel extends BannerEntity with _$BannerModel {
  const factory BannerModel({
    required String imageUrl,
  }) = _BannerModel;

  factory BannerModel.fromJson(Map<String, Object?> json) => _$BannerModelFromJson(json);
}
