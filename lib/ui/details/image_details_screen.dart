import 'dart:developer';
import 'dart:io';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'package:path_provider/path_provider.dart';
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
  GlobalKey _globalKey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    final selectedImage = ref.watch(selectedImagePresenter);

    return Column(
      children: [
        RepaintBoundary(
          key: _globalKey,
          child: ColorFiltered(
            colorFilter: ColorFilter.matrix(
              [
                //R  G   B    A  Const
                sliderValue, 0, 0, 0, 0, //
                0, 1, 0, 0, 0, //
                0, 0, 1, 0, 0, //
                0, 0, 0, 1, 0, //
              ],
            ),
            child: Image.network(
              selectedImage.url,
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text(
                'Apply filter',
              ),
              Slider(
                  max: 3,
                  min: -1,
                  divisions: null,
                  value: sliderValue,
                  onChanged: (newValue) {
                    setState(() {
                      sliderValue = newValue;
                      log('Value $sliderValue');
                    });
                  }),
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

  Future<void> _capturePng() async {
    try {
      print('inside');
      final boundary = _globalKey.currentContext?.findRenderObject()
          as RenderRepaintBoundary;
      ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      final byteData = await image.toByteData(format: ui.ImageByteFormat.png);
      Uint8List pngBytes = byteData?.buffer.asUint8List() ?? Uint8List(0);
      //create file
      final String dir = (await getApplicationDocumentsDirectory()).path;
      final imagePath = '$dir/file_name${DateTime.now()}.png';
      final capturedFile = File(imagePath);
      await capturedFile.writeAsBytes(pngBytes);
      print(capturedFile.path);
      final dynamic result = await ImageGallerySaver.saveImage(pngBytes,
          quality: 60, name: 'file_name${DateTime.now()}');
      print(result);
      print('png done');
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text('Saved to gallery!')));
    } catch (e) {
      print(e);
    }
  }
}
