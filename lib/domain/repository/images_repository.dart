import 'package:infinum_architecture/common/models/unsplash_image.dart';

abstract class ImagesRepository {
  Future<List<UnsplashImage>> fetchImages(int page);
}
