import 'package:bookly/core/utils/app_styles.dart';
import 'package:bookly/features/Home/presentation/views/widgets/best_seller_list_view.dart';
import 'package:bookly/features/Home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'package:bookly/features/Home/presentation/views/widgets/custom_app_bar.dart';
import 'package:bookly/features/Home/presentation/views/widgets/featured_book_list_view.dart';
import 'package:flutter/material.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomAppBar(),
              FeaturedBooksListView(),
              SizedBox(
                height: 48,
              ),
              Padding(
                padding: EdgeInsets.only(left: 30.0),
                child: Text(
                  'Best Seller',
                  style: AppStyles.textStyle_18_SemiBold_Montserrat,
                ),
              ),
            ],
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.only(left: 30.0, top: 20),
            child: BestSellerListView(),
          ),
        ),
      ],
    );
  }
}
