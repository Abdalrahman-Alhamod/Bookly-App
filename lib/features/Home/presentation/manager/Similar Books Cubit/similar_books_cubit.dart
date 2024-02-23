import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/home_repo.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var data = await homeRepo.fetchSimilarBooks(category: category);
    data.fold(
      (failure) => emit(
        SimilarBooksFailure(failure.errorMessage),
      ),
      (books) => emit(
        SimilarBooksSuccess(books),
      ),
    );
  }
}
