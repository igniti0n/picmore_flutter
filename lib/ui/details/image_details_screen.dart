import 'dart:typed_data';

import 'package:bitmap/bitmap.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:picmore/ui/details/presenter/image_presenter.dart';

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

class ImageDetailsBody extends ConsumerStatefulWidget {
  const ImageDetailsBody({Key? key}) : super(key: key);

  @override
  _ImageDetailsBodyState createState() => _ImageDetailsBodyState();
}

class _ImageDetailsBodyState extends ConsumerState<ImageDetailsBody> {
  double sliderValue = 1;
  Uint8List? filteredImage;

  @override
  void initState() {
    print('{APPTIM_EVENT}: navGo, STOP');
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _transformPixels(ref.read(selectedImagePresenter).url);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    print('{APPTIM_EVENT}: navGoBuild, STOP');

    final selectedImage = ref.watch(selectedImagePresenter);

    return Column(
      children: [
        if (filteredImage == null)
          Center(
            child: CircularProgressIndicator.adaptive(),
          )
        else
          Image.memory(
            filteredImage!,
          ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextButton(
                  onPressed: () {
                    _transformPixels(selectedImage.url);
                  },
                  child: Text('Apply filter')),
              TextButton(
                onPressed: () => _capturePng(),
                child: Text('Save to gallery.'),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/heart-sharp.svg',
                        width: 28,
                        height: 28,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('${selectedImage.likes}'),
                    ],
                  ),
                  CircleAvatar(
                    minRadius: 26,
                    backgroundImage: NetworkImage(
                      selectedImage.userImageUrl ?? '',
                    ),
                  ),
                  Text(selectedImage.username ?? 'n/a'),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                selectedImage.bio ?? 'n/a',
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ],
    );
  }

  Future<void> _transformPixels(String imageUrl) async {
    final image = NetworkImage(imageUrl);
    print('{APPTIM_EVENT}: event_name, START');
    Bitmap bitmap = await Bitmap.fromProvider(image);
    late final Uint8List newImage;
    if (filteredImage != null) {
      newImage =
          bitmap.apply(BitmapAdjustColor(exposure: sliderValue)).buildHeaded();
    } else {
      newImage = bitmap.buildHeaded();
    }
    setState(() {
      print('{APPTIM_EVENT}: event_name, STOP');
      filteredImage = newImage;
    });
  }

  Future<void> _capturePng() async {
    try {
      if (filteredImage == null) {
        return;
      }
      await ImageGallerySaver.saveImage(filteredImage!,
          quality: 100, name: 'file_name${DateTime.now()}');
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Saved to gallery!')));
    } catch (e) {
      print(e);
    }
  }
}
