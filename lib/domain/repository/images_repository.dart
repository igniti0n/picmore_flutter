import 'package:picmore/common/models/unsplash_image.dart';

abstract class ImagesRepository {
  Future<List<UnsplashImage>> fetchImages(int page);
}
