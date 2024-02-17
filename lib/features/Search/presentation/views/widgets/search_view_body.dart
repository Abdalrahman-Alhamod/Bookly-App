import 'package:bookly/features/Search/presentation/views/widgets/custom_search_bar.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utils/app_styles.dart';
import 'search_result_list_view.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16,
          ),
          CustomSearchBar(),
          SizedBox(
            height: 16,
          ),
          Text(
            'Search Results',
            style: AppStyles.textStyle_18_SemiBold_Montserrat,
          ),
          SizedBox(
            height: 16,
          ),
          Expanded(
            child: SearchResultListView(),
          ),
        ],
      ),
    );
  }
}
