import 'package:crazy_quiz/core/widgets/texts/text_r.dart';
import 'package:flutter/material.dart';

class QuizCountCard extends StatelessWidget {
  const QuizCountCard({super.key, required this.count});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44,
      width: 90,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Container(
          height: 38,
          width: 84,
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: TextM('$count/20', fontSize: 22),
          ),
        ),
      ),
    );
  }
}
