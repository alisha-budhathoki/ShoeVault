// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shoe_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShoeResponseImpl _$$ShoeResponseImplFromJson(Map<String, dynamic> json) =>
    _$ShoeResponseImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      brand: json['brand'] as String,
      description: json['description'] as String,
      price: (json['price'] as num).toDouble(),
      brandImg: json['brandImg'] as String?,
      rating: (json['rating'] as num).toDouble(),
      sizes: (json['sizes'] as List<dynamic>).map((e) => e as String).toList(),
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
      colors:
          (json['colors'] as List<dynamic>).map((e) => e as String).toList(),
      genderType: json['genderType'] as String,
      reviews: (json['reviews'] as List<dynamic>)
          .map((e) => Review.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ShoeResponseImplToJson(_$ShoeResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'brand': instance.brand,
      'description': instance.description,
      'price': instance.price,
      'brandImg': instance.brandImg,
      'rating': instance.rating,
      'sizes': instance.sizes,
      'images': instance.images,
      'colors': instance.colors,
      'genderType': instance.genderType,
      'reviews': instance.reviews,
    };

_$ReviewImpl _$$ReviewImplFromJson(Map<String, dynamic> json) => _$ReviewImpl(
      reviewerName: json['reviewerName'] as String,
      timeOfReview: json['timeOfReview'] as String,
      rating: (json['rating'] as num).toDouble(),
      comment: json['comment'] as String,
    );

Map<String, dynamic> _$$ReviewImplToJson(_$ReviewImpl instance) =>
    <String, dynamic>{
      'reviewerName': instance.reviewerName,
      'timeOfReview': instance.timeOfReview,
      'rating': instance.rating,
      'comment': instance.comment,
    };
