# pip install python-telegram-bot --upgrade
import telegram

bot = telegram.Bot(token='{BOT TOKEN}')
chat_id = 1987654321 # private type chat is positive integer, group type chat is negative integer

bot.sendMessage(chat_id=chat_id, text="Hello Bot Test")
