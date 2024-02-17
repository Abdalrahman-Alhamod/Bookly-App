import 'package:bookly/core/utils/app_route.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/features/Home/presentation/views/widgets/book_rating.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../core/utils/app_images.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookIndex});
  final int bookIndex;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRoute.kBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 1.3 / 2,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      AppImages.bookCovers.elementAt(bookIndex),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Harry Potter and the Goblet of Fire',
                    style: AppStyles.textStyle_20_Regular_GTSectraFine,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Opacity(
                    opacity: 0.7,
                    child: Text(
                      'J.K. Rowling',
                      style: AppStyles.textStyle_14_Medium_Montserrat,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '19.99 €',
                          style: AppStyles.textStyle_20_Bold_Montserrat,
                        ),
                        BookRating(),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
