import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:picmore/app/go_router.dart';
import 'package:picmore/common/models/unsplash_image.dart';
import 'package:picmore/ui/common/widgets/image_details_bar.dart';
import 'package:picmore/ui/details/presenter/image_presenter.dart';

class ImageListItem extends ConsumerWidget {
  const ImageListItem({Key? key, required this.image}) : super(key: key);

  final UnsplashImage image;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: GestureDetector(
        onTap: () => _onImageTapped(ref),
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            Radius.circular(16),
          ),
          child: Stack(
            fit: StackFit.passthrough,
            children: [
              Image.network(
                image.url,
                filterQuality: FilterQuality.high,
                fit: BoxFit.cover,
                height: 400,
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

  void _onImageTapped(WidgetRef ref) {
    ref.read(selectedImagePresenter.notifier).state = image;
    print('{APPTIM_EVENT}: navGo, START');
    print('{APPTIM_EVENT}: navGoBuild, START');

    ref.read(routerProvider).router.goNamed(
          'image',
          params: {'imid': image.id},
          extra: image,
        );
  }
}
