// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shoes_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShoesResponseImpl _$$ShoesResponseImplFromJson(Map<String, dynamic> json) =>
    _$ShoesResponseImpl(
      shoes: (json['shoes'] as List<dynamic>)
          .map((e) => Shoe.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageToken: json['nextPageToken'] as String?,
    );

Map<String, dynamic> _$$ShoesResponseImplToJson(_$ShoesResponseImpl instance) =>
    <String, dynamic>{
      'shoes': instance.shoes,
      'nextPageToken': instance.nextPageToken,
    };
