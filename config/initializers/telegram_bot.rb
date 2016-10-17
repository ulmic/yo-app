require 'telegram/bot'
include ::Karamzin
include Concerns::RequestCounter

token = ENV['TELEGRAM_BOT_TOKEN']

Telegram::Bot::Client.run(token) do |bot|
  bot.listen do |message|
    case message.text
    when '/start'
      bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
    when '/stop'
      bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}")
    else
      text = insert message.text
      increase_request_counter :telegram
      bot.api.send_message(chat_id: message.chat.id, text: text)
    end
  end
end
