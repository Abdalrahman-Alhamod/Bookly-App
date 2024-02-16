import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_rating.dart';
import 'package:bookly/features/Home/presentation/views/widgets/cutom_list_view_item.dart';
import 'package:flutter/material.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          children: [
            const BookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.only(
                left: width * .18,
                right: width * .18,
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
          ],
        ),
      ),
    );
  }
}
