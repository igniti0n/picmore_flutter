// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../domain/interactor/images_interactor.dart' as _i6;
import '../../domain/repository/images_repository.dart' as _i4;
import '../../source_remote/impl/images_repository_impl.dart' as _i5;
import 'module.dart' as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final module = _$Module();
  gh.factory<_i3.Dio>(() => module.dio);
  gh.lazySingleton<_i4.ImagesRepository>(() => _i5.ImagesRepositoryImpl());
  gh.factory<_i6.ImagesInteractor>(
      () => _i6.ImagesInteractorImpl(get<_i4.ImagesRepository>()));
  return get;
}

class _$Module extends _i7.Module {}
