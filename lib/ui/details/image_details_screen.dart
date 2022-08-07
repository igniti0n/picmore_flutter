import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:picmore/ui/details/presenter/image_presenter.dart';
import 'package:picmore/ui/details/widgets/fibonacci_counter.dart';

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
    final selectedImage = ref.watch(selectedImagePresenter);

    return Column(
      children: [
        Image.network(
          selectedImage.url,
          filterQuality: FilterQuality.high,
          fit: BoxFit.cover,
        ),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
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
              SizedBox(
                height: 20,
              ),
              Text(selectedImage.bio ?? 'n/a'),
              FibonacciCounter(),
            ],
          ),
        )
      ],
    );
  }
}
