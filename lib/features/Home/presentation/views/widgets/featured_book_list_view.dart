import 'package:bookly/core/utils/app_images.dart';
import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_widget.dart';
import 'package:bookly/features/Home/presentation/manager/Featured%20Books%20Cubit/featured_books_cubit.dart';
import 'package:bookly/features/Home/presentation/views/widgets/cutom_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeaturedBooksCubit, FeaturedBooksState>(
      builder: (context, state) {
        if (state is FeaturedBooksSuccess) {
          return Padding(
            padding: const EdgeInsets.only(left: 16),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * .3,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: AppImages.bookCovers.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: CustomBookImage(
                      bookIndex: index,
                    ),
                  );
                },
              ),
            ),
          );
        } else if (state is FeaturedBooksFailure) {
          return CustomErrorWidget(errorMessage: state.errorMessage);
        } else {
          return const CustomLoadingWidget();
        }
      },
    );
  }
}
