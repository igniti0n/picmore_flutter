import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:picmore/common/error_handling/error_formatter.dart';
import 'package:picmore/common/models/unsplash_image.dart';
import 'package:picmore/ui/home/presenter/images_request_provider.dart';
import 'package:picmore/ui/home/widgets/image_list_item.dart';

class ImagesBody extends ConsumerWidget {
  const ImagesBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _imagesRequestProvider = ref.watch(imagesRequestProvider);

    return _imagesRequestProvider.state.maybeWhen(
      failure: (exception) => Center(
        child: Text(ErrorFormatter.format(exception, context: context)),
      ),
      success: (images) => _ImagesList(images: images),
      orElse: () => Center(child: CircularProgressIndicator()),
    );
  }
}

class _ImagesList extends StatelessWidget {
  const _ImagesList({Key? key, required this.images}) : super(key: key);
  final List<UnsplashImage> images;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: images.length,
      itemExtent: 400,
      itemBuilder: (ctx, index) => ImageListItem(image: images[index]),
    );
  }
}
