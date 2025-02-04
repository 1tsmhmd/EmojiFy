import 'package:dotenv/dotenv.dart';
import 'package:televerse/televerse.dart';

// < ------------- Bot ------------- />
var env = DotEnv(includePlatformEnvironment: true)..load();
String botToken = env['TELEGRAM_BOT_TOKEN'] ?? '';
final bot = Bot(botToken);
