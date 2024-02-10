import 'package:bookly/core/utils/app_text_styles.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/Home/presentation/views/widgets/featured_book_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomAppBar(),
        FeaturedBooksListView(),
        SizedBox(
          height: 48,
        ),
        Padding(
          padding: EdgeInsets.only(left: 24.0),
          child: Text(
            'Best Seller',
            style: AppTextStyles.titleMedium,
          ),
        ),
      ],
    );
  }
}
