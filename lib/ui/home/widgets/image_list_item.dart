import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:picmore/app/go_router.dart';
import 'package:picmore/common/models/unsplash_image.dart';
import 'package:picmore/ui/common/widgets/image_details_bar.dart';
import 'package:picmore/ui/details/presenter/image_provider.dart';

class ImageListItem extends ConsumerWidget {
  const ImageListItem({Key? key, required this.image}) : super(key: key);

  final UnsplashImage image;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GestureDetector(
        onTap: () {
          ref.read(selectedImageProvider.notifier).state = image;
          ref.read(routerProvider).router.goNamed(
                'image',
                params: {'imid': image.id},
                extra: image,
              );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: image.url,
                placeholder: (ctx, _) => Container(
                  color: Colors.white70,
                  alignment: Alignment.center,
                  child: CircularProgressIndicator(
                    strokeWidth: 1,
                  ),
                ),
              ),
              Column(
                children: [
                  Spacer(),
                  ImageDetailsBar(image: image),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
