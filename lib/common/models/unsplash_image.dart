part 'unsplash_image.g.dart';

/// {@template unasplash_image}
/// UnasplashImage description
/// {@endtemplate}
class UnsplashImage {
  /// {@macro unasplash_image}
  const UnsplashImage({
    required this.id,
    required this.likes,
    required this.url,
    required this.username,
    required this.bio,
    required this.userImageUrl,
  });

  /// Creates a UnasplashImage from Json map
  factory UnsplashImage.fromJson(Map<String, dynamic> data) =>
      _$UnasplashImageFromJson(data);

  /// A description for id
  final String id;

  /// A description for likes
  final int likes;

  /// A description for url
  final String url;

  /// A description for usernamme
  final String username;

  /// A description for bio
  final String bio;

  /// A description for userImageUrl
  final String userImageUrl;

  /// Creates a Json map from a UnasplashImage
  Map<String, dynamic> toJson() => _$UnasplashImageToJson(this);
}
