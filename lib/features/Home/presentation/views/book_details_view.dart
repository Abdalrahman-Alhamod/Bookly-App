import 'package:bookly/features/Home/presentation/views/widgets/book_details_app_bar.dart';
import 'package:bookly/features/Home/presentation/views/widgets/cutom_list_view_item.dart';
import 'package:bookly/features/Home/presentation/views/widgets/featured_book_list_view.dart';
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
          ],
        ),
      ),
    );
  }
}
