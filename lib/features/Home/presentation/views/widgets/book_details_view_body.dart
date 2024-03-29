import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';

import 'book_details_app_bar.dart';
import 'book_details_section.dart';
import 'similar_books_section.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({
    super.key, required this.bookModel,
  });
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return  CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Scaffold(
            body: Padding(
              padding:const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                 const  BookDetailsAppBar(),
                  BookDetailsSection(bookModel: bookModel,),
                  const Expanded(
                    child: SizedBox(
                      height: 50,
                    ),
                  ),
                  const SimilarBooksSection(),
                  const SizedBox(
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
