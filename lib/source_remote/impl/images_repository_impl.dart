import 'package:dio/dio.dart';
import 'package:infinum_architecture/common/models/unsplash_image.dart';
import 'package:infinum_architecture/domain/repository/images_repository.dart';
import 'package:infinum_architecture/source_remote/dio/clients/unsplash_client.dart';
import 'package:injectable/injectable.dart';

import '../../app/di/dependency_injection.dart';

@LazySingleton(as: ImagesRepository)
class ImagesRepositoryImpl extends ImagesRepository {
  final UnsplashClient unsplashClient = UnsplashClient(getIt<Dio>());

  @override
  Future<List<UnsplashImage>> fetchImages(int page) async =>
      await unsplashClient.fetchImages(page);
}
