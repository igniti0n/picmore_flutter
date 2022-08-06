import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:picmore/app/di/dependency_injection.dart';
import 'package:picmore/common/models/unsplash_image.dart';
import 'package:picmore/domain/interactor/images_interactor.dart';
import 'package:picmore/ui/common/bits/request_provider/request_provider.dart';

final imagesRequestProvider =
    ChangeNotifierProvider.autoDispose<ImagesRequestProvider>(
  ((ref) => ImagesRequestProvider(getIt<ImagesInteractor>())),
);

class ImagesRequestProvider extends RequestProvider<List<UnsplashImage>> {
  ImagesRequestProvider(this._imagesInteractor) {
    fetchImages(0);
  }

  final ImagesInteractor _imagesInteractor;
  int pageNumber = 0;

  void fetchImages(int pageKey) {
    if (pageKey == 0) {
      pageNumber = 0;
    }
    log('Fetching images for page: $pageNumber');
    executeRequest(
        requestBuilder: () async => _imagesInteractor.fetchImages(pageNumber));
  }
}
