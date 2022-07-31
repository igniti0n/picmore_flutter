import 'package:injectable/injectable.dart';
import 'package:picmore/common/models/unsplash_image.dart';

@LazySingleton()
class UnsplashedImagesHolder {
  List<UnsplashImage> images = [];
}
