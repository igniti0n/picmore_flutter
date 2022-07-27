import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:infinum_architecture/ui/common/look/widget/look.dart';
import 'package:infinum_architecture/ui/home/presenter/images_request_provider.dart';
import 'package:loggy/loggy.dart';

class HomeScreen extends HookConsumerWidget with UiLoggy {
  const HomeScreen({Key? key}) : super(key: key);

  static Page route(LocalKey key) {
    return MaterialPage<dynamic>(
      key: key,
      child: const HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    logDebug("This is debug message from UI");

    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.amber,
      body: Center(
        child: TextButton(
          onPressed: () => ref.read(imagesRequestProvider).fetchImages(4),
          child: Text(
            'Hello world!',
            style: Look.of(context).typography.body,
          ),
        ),
      ),
    );
  }
}
