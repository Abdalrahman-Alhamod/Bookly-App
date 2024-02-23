// ignore_for_file: constant_identifier_names

import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/Home/data/models/book_model/book_model.dart';
import 'package:bookly/features/Home/data/repos/home_repo_impl.dart';
import 'package:bookly/features/Home/presentation/manager/Similar%20Books%20Cubit/similar_books_cubit.dart';
import 'package:bookly/features/Home/presentation/views/book_details_view.dart';
import 'package:bookly/features/Home/presentation/views/home_view.dart';
import 'package:bookly/features/Search/presentation/views/search_view.dart';
import 'package:bookly/features/Splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  static const kHomeView = '/home';
  static const kBookDetailsView = '/bookDetails';
  static const kSearchView = '/search';
  static final GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (BuildContext context, GoRouterState state) {
          return const HomeView();
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (BuildContext context, GoRouterState state) {
          return const SearchView();
        },
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (BuildContext context, GoRouterState state) {
          return  BlocProvider(
            create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
            child:  BookDetailsView(bookModel: state.extra as BookModel,),
          );
        },
      ),
    ],
  );
}
