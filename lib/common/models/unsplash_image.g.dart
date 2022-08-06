part of 'unsplash_image.dart';

UnsplashImage _$UnasplashImageFromJson(Map<String, dynamic> json) =>
    UnsplashImage(
      id: json['id'] as String,
      likes: json['likes'] as int,
      url: json['urls']['raw'] as String,
      username: json['user']['username'] as String?,
      bio: json['user']['bio'] as String?,
      userImageUrl: json['user']['profile_image']['small'] as String?,
      blurHash: json['blur_hash'] as String?,
    );

Map<String, dynamic> _$UnasplashImageToJson(UnsplashImage instance) =>
    <String, dynamic>{
      'id': instance.id,
      'likes': instance.likes,
      'url': instance.url,
      'username': instance.username,
      'bio': instance.bio,
      'userImageUrl': instance.userImageUrl,
    };
