import 'package:buckley_app/features/home/presentation/views/widgets/book_details_section.dart';
import 'package:buckley_app/features/home/presentation/views/widgets/custom_book_details_appbar.dart';
import 'package:buckley_app/features/home/presentation/views/widgets/similar_books_section.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomBookDetailsAppBar(),
            BookDetailsSection(),
            SimilarBooksSection()
          ],
        ),
      ),
    );
  }
}
