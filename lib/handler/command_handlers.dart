import 'package:emojify/utils/constants.dart';
import 'package:emojify/utils/keybaords.dart';
import 'package:televerse/televerse.dart';

void commandHandlers() {
  // Register bot commands

  // Handle the /start command to welcome users and provide initial options
  bot.command('start', startHandler);

  // Attach the custom keyboard menu
  bot.attachMenu(Keybaords.searchEmojiKeybaord);
}

// Handler function for the /start command
Future<void> startHandler(Context ctx) async {
  await ctx.reply(
    "🤝 Welcome to the <b><u>Emoji Search</u></b> Bot\n",
    replyMarkup:
        Keybaords.searchEmojiKeybaord, // Attach the search emoji keyboard
    parseMode: ParseMode.html,
  );
}
