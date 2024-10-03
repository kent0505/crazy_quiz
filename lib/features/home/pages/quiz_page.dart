import 'package:crazy_quiz/core/models/quiz.dart';
import 'package:crazy_quiz/core/widgets/texts/text_r.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/utils.dart';
import '../../../core/widgets/buttons/arrow_back_button.dart';
import '../../../core/widgets/custom_scaffold.dart';
import '../../../core/widgets/others/timer_widget.dart';
import '../widgets/coins_card.dart';
import '../widgets/title_card.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key, required this.level});

  final int level;

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  int index = 0;

  void onAnswer(Answer answer) {
    if (answer.correct) {
    } else {}
  }

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
          const Spacer(),
          TitleCard(title: 'Level ${widget.level}'),
          const Spacer(),
          SizedBox(
            height: 220,
            child: Stack(
              children: [
                Center(child: SvgPicture.asset('assets/timer_card.svg')),
                Padding(
                  padding: const EdgeInsets.only(top: 22),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: TimerWidget(
                      seconds: seconds,
                      style: const TextStyle(
                        color: Color(0xff370132),
                        fontSize: 16,
                        fontFamily: Fonts.medium,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Align(
                    alignment: Alignment.center,
                    child: SizedBox(
                      width: 290,
                      child: TextR(
                        quizList[index].question,
                        fontSize: 30,
                        maxLines: 3,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
          SvgPicture.asset('assets/answer_card.svg'),
          const Spacer(),
          SvgPicture.asset('assets/answer_card.svg'),
          const Spacer(),
          SvgPicture.asset('assets/answer_card.svg'),
          const Spacer(),
          SvgPicture.asset('assets/answer_card.svg'),
          SizedBox(height: 22 + getBottom(context)),
        ],
      ),
    );
  }
}
