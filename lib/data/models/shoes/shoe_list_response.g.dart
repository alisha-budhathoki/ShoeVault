// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shoe_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShoeListResponseImpl _$$ShoeListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ShoeListResponseImpl(
      shoes: (json['shoes'] as List<dynamic>)
          .map((e) => ShoeResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageToken: json['nextPageToken'] as String?,
    );

Map<String, dynamic> _$$ShoeListResponseImplToJson(
        _$ShoeListResponseImpl instance) =>
    <String, dynamic>{
      'shoes': instance.shoes,
      'nextPageToken': instance.nextPageToken,
    };
