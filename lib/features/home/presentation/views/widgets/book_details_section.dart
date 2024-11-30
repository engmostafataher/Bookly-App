
import 'package:buckley_app/core/utils/styels.dart';
import 'package:buckley_app/features/home/presentation/views/widgets/book_action.dart';
import 'package:buckley_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:buckley_app/features/home/presentation/views/widgets/custom_book_itme.dart';
import 'package:flutter/material.dart';

class BookDetailsSection
 extends StatelessWidget {
  const BookDetailsSection
  ({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal:width *.17 ),
              child: const CustomBookItme(),
            ),
            const SizedBox(height: 43,),
            const Text('The Jungle Book',style: Styels.textStyle30,),
            const SizedBox(height: 6,),
             Opacity(
              opacity: 0.7,
               child: Text('Rudyard Kipling',style: Styels.textStyle18.copyWith(
                fontWeight: FontWeight.w500
               ),),
             ),
             const SizedBox(height: 18,),
             const BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
             ),
              const SizedBox(height: 37,),
             const BooksAction(),
             const SizedBox(height: 16,),
      ],
    );
  }
}



