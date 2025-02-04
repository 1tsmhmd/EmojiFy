import 'package:dotenv/dotenv.dart';
import 'package:televerse/televerse.dart';

// < ------------- Bot ------------- />
class BotConfig {
  static String get token {
    var env = DotEnv(includePlatformEnvironment: true)..load();
    String token = env['TELEGRAM_BOT_TOKEN']?.trim() ?? '';

    if (token.isEmpty) {
      throw Exception(
          "❌ ERROR: Bot token is missing! Please add your TELEGRAM_BOT_TOKEN in the .env file.");
    }

    return token;
  }
}

final bot = Bot(BotConfig.token);
