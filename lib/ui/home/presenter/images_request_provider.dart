import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:picmore/app/di/dependency_injection.dart';
import 'package:picmore/common/models/unsplash_image.dart';
import 'package:picmore/domain/interactor/images_interactor.dart';
import 'package:picmore/ui/common/bits/request_provider/request_provider.dart';

final imagesRequestProvider = ChangeNotifierProvider.autoDispose(
  ((ref) => ImagesRequestProvider(getIt<ImagesInteractor>())),
);

class ImagesRequestProvider extends RequestProvider<List<UnsplashImage>> {
  ImagesRequestProvider(this._imagesInteractor) {
    fetchImages(4);
  }

  final ImagesInteractor _imagesInteractor;

  void fetchImages(int pageNumber) => executeRequest(
        requestBuilder: () async =>
            await _imagesInteractor.fetchImages(pageNumber),
      );
}
