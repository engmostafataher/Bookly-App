import 'package:buckley_app/core/errors/failures.dart';
import 'package:buckley_app/core/utils/api_service.dart';
import 'package:buckley_app/features/home/data/models/book_model/book_model.dart';
import 'package:buckley_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImpl implements HomeRepo {
  final ApiService apiService;

  HomeRepoImpl(this.apiService);
  @override
  @override
  Future<Either<Failures, List<BookModel>>> fetchFeaturedBooks()async {
      try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&q=subject:Programming');
      List<BookModel> books = [];
      for (var itme in data['itmes']) {
        books.add(BookModel.fromJson(itme));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioException(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchNewestBooks() async {
    try {
      var data = await apiService.get(
          endPoint:
              'volumes?Filtering=free-ebooks&Sorting=newest &q=subject:Programming');
      List<BookModel> books = [];
      for (var itme in data['itmes']) {
        books.add(BookModel.fromJson(itme));
      }
      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(ServerFailuer.fromDioException(e));
      }
      return left(ServerFailuer(e.toString()));
    }
  }
}
