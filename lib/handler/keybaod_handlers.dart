import 'dart:async';

import 'package:emojify/services/dio_service.dart';
import 'package:emojify/utils/constants.dart';
import 'package:emojify/utils/keybaords.dart';
import 'package:televerse/telegram.dart';
import 'package:televerse/televerse.dart';
import 'package:html/parser.dart' as parser;

// Handler function for the emoji search button
FutureOr<void> searchEmojiHandler(Context ctx) async {
  // Prompt the user to enter the emoji name
  await ctx.reply("💡 Enter the name of the emoji:", replyMarkup: ForceReply());

  bot.onMessage(
    options: ScopeOptions(name: "emoji"), // Scoped listener for emoji input
    (ctx) async {
      var userText = ctx.message?.text?.toLowerCase();
      print(userText);

      ctx.replyWithChatAction(ChatAction.typing); // Show "typing" action

      // Regular expression to validate English alphabetic input only
      RegExp searchPattern = RegExp(r'^[a-zA-Z]+$');
      if (userText != null && searchPattern.hasMatch(userText)) {
        // Fetch emoji data from the website
        var response = await DioService()
            .getMethod("https://emojidb.org/$userText-emojis?");

        if (response.statusCode == 200) {
          var document = parser.parse(response.data);
          var emojiElements = document.querySelectorAll('div.emoji');

          if (emojiElements.isNotEmpty) {
            // Extract and clean the emoji list
            var emojis = emojiElements
                .map((e) => e.text.trim())
                .where((e) => e.isNotEmpty)
                .toList();

            // Send the extracted emojis to the user (limit to 50 results)
            await ctx.reply(emojis.take(50).join(" "),
                replyMarkup: Keybaords.searchEmojiKeybaord);
          }
        } else {
          // API request failed, notify the user
          await ctx.reply(
            "🙁 No emojis found.",
            replyMarkup: Keybaords.searchEmojiKeybaord,
          );
        }
      } else {
        // Send an error message if the input is invalid
        await ctx.reply(
          "🤝 Please enter the emoji name in English.\n(Example: Smile)",
          replyMarkup: Keybaords.searchEmojiKeybaord,
        );
      }
      // Remove the listener scope to ensure the user presses the search button again
      bot.removeScope("emoji");
    },
  );
}
