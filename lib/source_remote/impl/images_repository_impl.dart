import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:picmore/common/models/unsplash_image.dart';
import 'package:picmore/domain/repository/images_repository.dart';
import 'package:picmore/source_remote/dio/clients/unsplash_client.dart';

import '../../app/di/dependency_injection.dart';

@LazySingleton(as: ImagesRepository)
class ImagesRepositoryImpl extends ImagesRepository {
  final UnsplashClient unsplashClient = UnsplashClient(getIt<Dio>());

  @override
  Future<List<UnsplashImage>> fetchImages(int page) async =>
      unsplashClient.fetchImages(page);
}

// anterio, ninjason, isaiah
