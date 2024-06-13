// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shoe.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShoeImpl _$$ShoeImplFromJson(Map<String, dynamic> json) => _$ShoeImpl(
      id: json['id'] as String?,
      name: json['name'] as String,
      brand: json['brand'] as String,
      reviews: (json['reviews'] as num).toInt(),
      size: (json['size'] as num).toInt(),
      color: json['color'] as String,
      price: (json['price'] as num).toDouble(),
      rating: (json['rating'] as num).toDouble(),
      description: json['description'] as String,
      productImg: json['productImg'] as String?,
      brandImg: json['brandImg'] as String?,
    );

Map<String, dynamic> _$$ShoeImplToJson(_$ShoeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'brand': instance.brand,
      'reviews': instance.reviews,
      'size': instance.size,
      'color': instance.color,
      'price': instance.price,
      'rating': instance.rating,
      'description': instance.description,
      'productImg': instance.productImg,
      'brandImg': instance.brandImg,
    };
