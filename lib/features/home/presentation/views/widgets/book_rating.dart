import 'package:buckley_app/core/utils/styels.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key, this.mainAxisAlignment=MainAxisAlignment.start});

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children:  [
         const Icon(
          FontAwesomeIcons.solidStar,
          color: Color(0xFFFFDD4F),
        ),
         const SizedBox(
          width: 6.3,
        ),
         const Text(
          '4.8',
          style: Styels.textStyle16,
        ),
         const SizedBox(
          width: 5,
        ),
        Opacity(
          opacity: 0.5,
          child: Text(
            '(254)',
            style: Styels.textStyle14.copyWith(
              fontWeight: FontWeight.w600
            ),
          ),
        ),
      ],
    );
  }
}
