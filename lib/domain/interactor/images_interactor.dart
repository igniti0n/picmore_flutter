import 'package:injectable/injectable.dart';
import 'package:picmore/domain/repository/images_repository.dart';

import '../../common/models/unsplash_image.dart';

abstract class ImagesInteractor {
  Future<List<UnsplashImage>> fetchImages(int page);
}

@Injectable(as: ImagesInteractor)
class ImagesInteractorImpl extends ImagesInteractor {
  ImagesInteractorImpl(this._imagesRepository);

  final ImagesRepository _imagesRepository;

  @override
  Future<List<UnsplashImage>> fetchImages(int page) async {
    return await _imagesRepository.fetchImages(page);
  }
}
