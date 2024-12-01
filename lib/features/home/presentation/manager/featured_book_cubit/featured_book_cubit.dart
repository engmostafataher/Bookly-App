import 'package:bloc/bloc.dart';
import 'package:buckley_app/features/home/data/models/book_model/book_model.dart';
import 'package:buckley_app/features/home/data/repos/home_repo.dart';
import 'package:meta/meta.dart';

part 'featured_book_state.dart';

class FeaturedBookCubit extends Cubit<FeaturedBookState> {
  FeaturedBookCubit(this.homeRepo) : super(FeaturedBookInitial());

  final HomeRepo homeRepo;

  Future<void> fetchFeatuedBooks() async {
    emit(FeaturedBookLoading());
    var result = await homeRepo.fetchFeaturedBooks();
    result.fold((failure) {
      emit(FeaturedBookFailure(failure.toString()));
    }, (books) {
      emit(FeaturedBookSuccess(books));
    });
  }
}
