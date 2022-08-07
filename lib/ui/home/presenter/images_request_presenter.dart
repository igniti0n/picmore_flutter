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
  int pageNumber = 0;

  void fetchImages(int pageKey) {
    if (pageKey == 0) {
      pageNumber = 0;
    }
    executeRequest(requestBuilder: () async {
      final result = await _imagesInteractor.fetchImages(pageNumber);
      pageNumber++;
      return result;
    });
  }
}
