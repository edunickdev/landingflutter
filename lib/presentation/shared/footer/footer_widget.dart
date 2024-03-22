import 'package:flutter/material.dart';
import 'package:ong/config/theme/constants.dart';

import 'left_column_widget.dart';
import 'right_column_widget.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({
    super.key,
    required this.height,
    required this.width,
  });

  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {

    return Container(
      height: height,
      color: tertiary,
      child: Row(
        children: [
          const Expanded(
            child: Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: 60, vertical: 30),
              child: LeftColumnWidget(),
            ),
          ),
          // Expanded(
          //   child: RightColumnWidget(height: height, width: width),
          // ),
        ],
      ),
    );
  }
}

