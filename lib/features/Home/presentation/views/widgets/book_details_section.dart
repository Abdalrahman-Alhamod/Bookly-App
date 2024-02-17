import 'package:flutter/material.dart';

import '../../../../../core/utils/app_styles.dart';
import 'book_action.dart';
import 'book_rating.dart';
import 'cutom_list_view_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(
            left: width * .22,
            right: width * .22,
            top: 35,
            bottom: 45,
          ),
          child: const CustomBookImage(
            bookIndex: 0,
          ),
        ),
        const Text(
          'The Jungle Book',
          style: AppStyles.textStyle_30_Regular_GTSectraFine,
        ),
        const SizedBox(
          height: 6,
        ),
        const Opacity(
          opacity: 0.7,
          child: Text(
            'Rudyard Kipling',
            style: AppStyles.textStyle_18_Medium_Montserrat,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const BookRating(),
        const SizedBox(
          height: 37,
        ),
        const BookAction(),
      ],
    );
  }
}
