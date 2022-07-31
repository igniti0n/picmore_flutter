import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:picmore/app/go_router.dart';

import '../ui/common/generic/generic_error.dart';
import '../ui/common/look/mapping/theme_data_mapping/theme_data_mapper.dart';
import '../ui/common/look/widget/look.dart';
import '../ui/common/look/widget/look_subtree.dart';

class PicmoreApp extends HookConsumerWidget {
  PicmoreApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return LookSubtree(
      child: Builder(builder: (context) {
        return MaterialApp.router(
          routeInformationProvider:
              ref.read(routerProvider).router.routeInformationProvider,
          routeInformationParser:
              ref.read(routerProvider).router.routeInformationParser,
          routerDelegate: ref.read(routerProvider).router.routerDelegate,
          debugShowCheckedModeBanner: false,
          color: Look.of(context).color.background,
          useInheritedMediaQuery: true,
          theme: ThemeDataMapper.map(Look.of(context)),
          builder: _builder,
        );
      }),
    );
  }

  Widget _builder(BuildContext context, Widget? child) {
    _createErrorWidget(context);
    // ignore: newline-before-return
    return child ?? const SizedBox.shrink();
  }

  void _createErrorWidget(BuildContext context) {
    ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
      return Card(
        margin: const EdgeInsets.all(16),
        child: GenericError('Unexpected error'),
      );
    };
  }
}
