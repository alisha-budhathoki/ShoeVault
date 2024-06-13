// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_VM.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReviewVMImpl _$$ReviewVMImplFromJson(Map<String, dynamic> json) =>
    _$ReviewVMImpl(
      reviewerName: json['reviewerName'] as String,
      timeOfReview: DateTime.parse(json['timeOfReview'] as String),
      rating: (json['rating'] as num).toDouble(),
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$$ReviewVMImplToJson(_$ReviewVMImpl instance) =>
    <String, dynamic>{
      'reviewerName': instance.reviewerName,
      'timeOfReview': instance.timeOfReview.toIso8601String(),
      'rating': instance.rating,
      'comment': instance.comment,
    };
