import 'package:picmore/common/models/unsplash_image.dart';
import 'package:riverpod/riverpod.dart';

final selectedImagePresenter =
    StateProvider<UnsplashImage>((ref) => UnsplashImage.unknown());
