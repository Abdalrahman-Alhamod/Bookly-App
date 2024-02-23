
import 'package:flutter/material.dart';

import 'book_details_app_bar.dart';
import 'book_details_section.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  BookDetailsAppBar(),
                  BookDetailsSection(),
                  Expanded(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                  SimilarBooksSection(),
                  SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
