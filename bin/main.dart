import 'package:emojify/handler/command_handlers.dart';
import 'package:emojify/utils/constants.dart';

void main(List<String> args) {
  commandHandlers(); // Register and initialize bot command handlers
  bot.start(); // Start the bot to listen for incoming messages and commands
}
