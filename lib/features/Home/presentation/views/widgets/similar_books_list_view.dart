import 'package:bookly/core/widgets/custom_error_widget.dart';
import 'package:bookly/core/widgets/custom_loading_widget.dart';
import 'package:bookly/features/Home/presentation/manager/Similar%20Books%20Cubit/similar_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'cutom_list_view_item.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .1,
      child: BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
        builder: (context, state) {
          if (state is SimilarBooksSuccess) {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.only(right: 10),
                  child: CustomBookImage(
                    imageUrl: 'https://picsum.photos/536/354',
                  ),
                );
              },
            );
          } else if (state is SimilarBooksFailure) {
            return CustomErrorWidget(errorMessage: state.errorMessage);
          } else {
            return const CustomLoadingWidget();
          }
        },
      ),
    );
  }
}
