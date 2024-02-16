import 'package:bookly/core/utils/app_colors.dart';
import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(
          FontAwesomeIcons.solidStar,
          size: 15,
          color: Color(0xffFFDD4F),
        ),
        const SizedBox(
          width: 6.3,
        ),
        const Text(
          '4.8',
          style: AppStyles.textStyle_16_Medium_Montserrat,
        ),
        const SizedBox(
          width: 5,
        ),
        Text(
          '(2859)',
          style: AppStyles.textStyle_14_Regular_Montserrat
              .copyWith(color: AppColors.secondaryTextColor),
        ),
      ],
    );
  }
}
