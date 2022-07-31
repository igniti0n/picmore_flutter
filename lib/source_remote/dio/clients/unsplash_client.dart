import 'package:dio/dio.dart';
import 'package:picmore/common/models/unsplash_image.dart';
import 'package:retrofit/retrofit.dart';

part 'unsplash_client.g.dart';

@RestApi()
abstract class UnsplashClient {
  factory UnsplashClient(Dio dio, {String baseUrl}) = _UnsplashClient;

  @GET('/photos')
  Future<List<UnsplashImage>> fetchImages(
    @Query('page') int page,
  );

  ///photos?page=2&client_id=CLK0SBmLhZBvGYfNrPNVAy4MNWXpC2NXMxZdGVAmjZA

}
