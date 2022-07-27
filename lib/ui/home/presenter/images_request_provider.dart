import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinum_architecture/app/di/dependency_injection.dart';
import 'package:infinum_architecture/common/models/unsplash_image.dart';
import 'package:infinum_architecture/domain/interactor/images_interactor.dart';
import 'package:infinum_architecture/ui/common/bits/request_provider/request_provider.dart';

final imagesRequestProvider = ChangeNotifierProvider(
  ((ref) => ImagesRequestProvider(getIt<ImagesInteractor>())),
);

class ImagesRequestProvider extends RequestProvider<List<UnsplashImage>> {
  ImagesRequestProvider(this._imagesInteractor);

  final ImagesInteractor _imagesInteractor;

  void fetchImages(int pageNumber) => executeRequest(
        requestBuilder: () async =>
            await _imagesInteractor.fetchImages(pageNumber),
      );
}
