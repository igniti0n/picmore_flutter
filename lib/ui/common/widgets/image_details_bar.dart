import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:picmore/common/models/unsplash_image.dart';

class ImageDetailsBar extends StatelessWidget {
  const ImageDetailsBar({Key? key, required this.image}) : super(key: key);

  final UnsplashImage image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 20),
      color: Colors.white.withAlpha(240),
      child: Row(
        children: [
          SvgPicture.asset(
            'assets/heart-sharp.svg',
            width: 28,
            height: 28,
          ),
          SizedBox(
            width: 8,
          ),
          Text('${image.likes}'),
          Spacer(),
          Text(image.username ?? 'someone')
        ],
      ),
    );
  }
}
