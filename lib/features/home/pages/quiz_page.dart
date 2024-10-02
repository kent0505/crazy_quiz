import 'package:flutter/material.dart';

import '../../../core/utils.dart';
import '../../../core/widgets/buttons/arrow_back_button.dart';
import '../../../core/widgets/custom_scaffold.dart';
import '../../../core/widgets/texts/text_r.dart';
import '../widgets/coins_card.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key, required this.level});

  final int level;

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: [
          SizedBox(height: 50 + getStatusBar(context)),
          const Row(
            children: [
              SizedBox(width: 34),
              ArrowBackButton(),
              Spacer(),
              CoinsCard(),
              SizedBox(width: 34),
            ],
          ),
          const SizedBox(height: 50),
          TextB('Level ${widget.level}', fontSize: 30),
        ],
      ),
    );
  }
}
