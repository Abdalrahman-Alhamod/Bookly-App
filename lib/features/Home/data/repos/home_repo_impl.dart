import 'package:bookly/core/errors/failure.dart';
import 'package:bookly/core/errors/server_failure.dart';
import 'package:bookly/core/utils/api_service.dart';

import 'package:bookly/features/Home/data/models/book_model/book_model.dart';

import 'package:dartz/dartz.dart';

import 'home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService _apiService;

  HomeRepoImpl(this._apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async {
    try {
      final data = await _apiService.get(
        endPoint:
            'volumes?q=subject: Programming&filter=free-ebooks&orderBy=newest',
      );
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromJson(item));
      }

      return Right(books);
    } on Exception catch (_) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() {
    // TODO: implement fetchFeaturedBooks
    throw UnimplementedError();
  }
}