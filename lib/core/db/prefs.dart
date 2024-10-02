import 'package:shared_preferences/shared_preferences.dart';

import '../utils.dart';

int bgID = 1;
int coins = 0;

Future<void> getData() async {
  try {
    final prefs = await SharedPreferences.getInstance();
    // await prefs.remove(Prefs.onboard);
    // await prefs.clear();
    bgID = prefs.getInt('bgID') ?? 1;
    coins = prefs.getInt('coins') ?? 0;
    logger('BG ID = $bgID');
    logger('COINS = $coins');
  } catch (e) {
    logger(e);
  }
}

Future<void> addCoins(int value) async {
  final prefs = await SharedPreferences.getInstance();
  coins = coins + value;
  prefs.setInt('coins', coins);
}

Future<void> removeCoins(int value) async {
  final prefs = await SharedPreferences.getInstance();
  coins = coins - value;
  prefs.setInt('coins', coins);
}
