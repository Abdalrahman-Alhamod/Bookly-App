import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/repos/home_repo.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepo) : super(NewestBooksInitial());
   final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(NewestBooksLoading());
    var data = await homeRepo.fetchFeaturedBooks();
    data.fold(
      (failure) => emit(
        NewestBooksFailure(failure.errorMessage),
      ),
      (books) => emit(
        NewestBooksSuccess(books),
      ),
    );
  }
}
