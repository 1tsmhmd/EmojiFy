import 'package:emojify/handler/keybaod_handlers.dart';
import 'package:televerse/televerse.dart';

class Keybaords {
// Define the custom keyboard with a button to initiate an emoji search
  static final searchEmojiKeybaord =
      KeyboardMenu(resizeKeyboard: true, oneTimeKeyboard: true).text(
    "❤️‍🔥 Search Emoji ❤️‍🔥",
    searchEmojiHandler,
  );
}
