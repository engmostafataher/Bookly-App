
import 'package:buckley_app/features/home/presentation/views/widgets/custom_book_itme.dart';
import 'package:flutter/material.dart';

class SimilarBooksListView
 extends StatelessWidget {
  const SimilarBooksListView
  ({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
        return const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8),
          child:  CustomBookItme(),
        );
      }),
    );
  }
}
