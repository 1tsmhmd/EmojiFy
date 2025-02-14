
![EmojiFy](https://uploadkon.ir/uploads/088c04_25Vizality-Addon-Banner.png)

## ⭐ Support
The simplest way to support us is by clicking the star (⭐) at the top of this page

## 💭 About Project

EmojiFy is a Telegram bot that helps users find the perfect emoji based on a keyword. By entering an emoji name in English, users receive a list of relevant emojis. The bot fetches emoji data from **emojidb.org** and returns the results in an interactive and user-friendly way.  

## 🖼️ Screenshot

|  |  |
|---------|---------|
| ![freemovie](https://i.imgur.com/OiqLyDW.png) | ![freemovie](https://i.imgur.com/IcjYQKi.jpeg) |



## 🚀 Features

✅ **Fast emoji search** based on keywords  
✅ **Simple and user-friendly interface** with an interactive keyboard  
✅ **Instant responses** displaying relevant emojis  
✅ **Filtered emoji results** to exclude unnecessary characters 

## ⁉️ How It Works  
1️⃣ The user starts the bot with the `/start` command and receives a keyboard with the **"❤️‍🔥 Search Emoji"** button.  
2️⃣ After clicking the button, the bot prompts the user to enter an emoji name.  
3️⃣ The user types a keyword (e.g., `heart`, `smile`).  
4️⃣ The bot processes the request, scrapes the **emojidb.org** page, and extracts only the relevant emojis.  
5️⃣ The bot sends the list of related emojis back to the user.  
6️⃣ To search for a new emoji, the user needs to press the **"❤️‍🔥 Search Emoji"** button again.

## ⚡ **Technologies Used**  
- 🛠 **Programming Language:** Dart  
- 🤖 **Telegram Bot Framework:** [Televerse](https://pub.dev/packages/televerse)  
- 🌐 **Emoji Data Source:** Scraping from [emojidb.org](https://emojidb.org)  
- ⚡ **HTML Parsing:** Using `html/parser`  

## ⚙️ Installation
### 🧩 **Prerequisites**  
- [**Dart SDK**](https://dart.dev/get-dart) installed  
- A Telegram bot token from [@BotFather](https://t.me/BotFather)  
- Required dependencies installed 



### **Setup & Run**  
1. Clone the repository:  
   ```sh
   git clone https://github.com/1tsmhmd/EmojiFy.git
   cd EmojiFy

2. Install dependencies:
    ```sh
    dart pub get

3. Create a .env file and Add Your Telegram Bot Token
    ```sh
    cp .env.example .env   # For Linux/macOS
    copy .env.example .env  # For Windows

4. Then, open the .env file and add your Telegram Bot Token:
    ```sh
    TELEGRAM_BOT_TOKEN=your-bot-token-here

5. Run the bot:
    ```sh
    dart main.dart


## 🤝 Contribute
1. Fork the repository.
2. Make your changes.
3. Submit a Pull Request.


## 📞 Contact
[Telegram](https://t.me/itsmhmd)
