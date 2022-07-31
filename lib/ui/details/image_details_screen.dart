import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:picmore/ui/common/widgets/image_details_bar.dart';
import 'package:picmore/ui/details/presenter/image_provider.dart';

class ImageDetailsScreen extends HookConsumerWidget {
  const ImageDetailsScreen({Key? key}) : super(key: key);

  static Page route(LocalKey key) {
    return MaterialPage<dynamic>(
      key: key,
      child: ImageDetailsScreen(),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(child: ImageDetailsBody()),
    );
  }
}

class ImageDetailsBody extends ConsumerWidget {
  const ImageDetailsBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedImage = ref.watch(selectedImageProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CachedNetworkImage(
          fit: BoxFit.cover,
          imageUrl: selectedImage.url,
          placeholder: (ctx, _) => SizedBox(
            child: Center(
              child: CircularProgressIndicator(
                strokeWidth: 1,
              ),
            ),
          ),
        ),
        ImageDetailsBar(image: selectedImage),
        Text(
          'Author',
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CachedNetworkImage(
                    height: 48,
                    width: 48,
                    imageBuilder: (context, imageProvider) => CircleAvatar(
                      foregroundImage: imageProvider,
                    ),
                    fit: BoxFit.cover,
                    imageUrl: selectedImage.userImageUrl ?? '',
                    placeholder: (ctx, _) => Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blueGrey,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(selectedImage.username ?? 'n/a'),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(selectedImage.bio ?? 'n/a')
            ],
          ),
        )
      ],
    );
  }
}
