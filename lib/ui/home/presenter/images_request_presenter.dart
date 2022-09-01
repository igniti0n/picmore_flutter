import 'dart:developer';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:picmore/app/di/dependency_injection.dart';
import 'package:picmore/common/models/unsplash_image.dart';
import 'package:picmore/domain/interactor/images_interactor.dart';
import 'package:picmore/ui/common/bits/request_provider/request_provider.dart';

final imagesRequestPresenter =
    ChangeNotifierProvider.autoDispose<ImagesRequestPresenter>(
  ((ref) => ImagesRequestPresenter(getIt<ImagesInteractor>())),
);

class ImagesRequestPresenter extends RequestProvider<List<UnsplashImage>> {
  ImagesRequestPresenter(this._imagesInteractor);

  final ImagesInteractor _imagesInteractor;
  int pageNumber = 1;

  void fetchImages(int pageKey) {
    if (pageKey == 1) {
      pageNumber = 1;
    }
    executeRequest(requestBuilder: () async {
      final result = await _imagesInteractor.fetchImages(pageNumber);
      log('fetching for $pageNumber returned');
      for (var image in result) {
        log(image.toString());
      }
      pageNumber++;
      return result;
    });
  }
}
