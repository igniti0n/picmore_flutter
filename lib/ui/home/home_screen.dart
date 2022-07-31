import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:picmore/ui/home/widgets/images_body.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static Page route(LocalKey key) {
    return MaterialPage<dynamic>(
      key: key,
      child: const HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.amber,
      body: ImagesBody(),
    );
  }
}
