import 'package:buckley_app/core/errors/failures.dart';
import 'package:buckley_app/features/home/data/models/book_model/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo {
 Future<Either<Failures,List<BookModel>>>fetchNewestBooks();
  Future<Either<Failures,List<BookModel>>>fetchFeaturedBooks();
  
}