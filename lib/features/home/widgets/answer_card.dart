import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/models/quiz.dart';
import '../../../core/widgets/texts/text_r.dart';

class AnswerCard extends StatelessWidget {
  const AnswerCard({
    super.key,
    required this.id,
    required this.answer,
  });

  final String id;
  final Answer answer;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 74,
      child: Stack(
        children: [
          SvgPicture.asset('assets/answer_card.svg'),
          const Row(
            children: [
              TextB(
                '',
                fontSize: 25,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
