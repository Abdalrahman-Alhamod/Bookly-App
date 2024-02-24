import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/core/utils/functions/launch_custom_url.dart';
import 'package:bookly/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../data/models/book_model/book_model.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: Text(
                'Free',
                style: AppStyles.textStyle_18_Bold_Montserrat
                    .copyWith(color: Colors.black, fontWeight: FontWeight.w900),
              ),
              backgroundColor: Colors.white,
              onPressed: () {},
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              text: Text(
                getText(bookModel),
                style: AppStyles.textStyle_16_Bold_Gilory
                    .copyWith(color: Colors.white),
              ),
              backgroundColor: const Color(0xffEF8262),
              onPressed: () async {
                await launchCustomURL(
                  context,
                  bookModel.volumeInfo.previewLink,
                );
              },
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

String getText(BookModel bookModel) {
  if (bookModel.volumeInfo.previewLink != null) {
    return 'Preview';
  } else {
    return 'Not Available';
  }
}
