import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils.dart';
import '../../../core/widgets/buttons/arrow_back_button.dart';
import '../../../core/widgets/custom_scaffold.dart';
import '../widgets/coins_card.dart';

class LevelPage extends StatelessWidget {
  const LevelPage({super.key});

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
          SvgPicture.asset('assets/level.svg'),
        ],
      ),
    );
  }
}
