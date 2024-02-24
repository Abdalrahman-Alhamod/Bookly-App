import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'cutom_list_view_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: width * .25,
            right: width * .25,
            top: 35,
            bottom: 45,
          ),
          child: CustomBookImage(
            imageUrl: bookModel.volumeInfo.imageLinks?.thumbnail ?? '',
          ),
        ),
        Text(
          bookModel.volumeInfo.title!,
          style: AppStyles.textStyle_30_Regular_GTSectraFine,
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 6,
        ),
        Opacity(
          opacity: 0.7,
          child: Text(
            bookModel.volumeInfo.authors?[0] ?? 'Not known',
            style: AppStyles.textStyle_18_Medium_Montserrat,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const BookRating(
          rating: 4,
          count: 568,
        ),
        const SizedBox(
          height: 37,
        ),
        BookAction(
          bookModel: bookModel,
        ),
      ],
    );
  }
}
