import 'package:bookly/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.bookIndex});
  final int bookIndex;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AppImages.bookCovers.elementAt(bookIndex),
            ),
          ),
        ),
      ),
    );
  }
}
