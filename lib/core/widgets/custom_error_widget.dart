import 'package:bookly/core/utils/app_styles.dart';
import 'package:flutter/widgets.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessage});
  final String errorMessage;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorMessage,
        style: AppStyles.textStyle_14_Regular_Montserrat,
        textAlign: TextAlign.center,
      ),
    );
  }
}
