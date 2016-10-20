require 'telegram/bot'
namespace :yo_app do
  namespace :scheduler do
    task telegram_bot_listen: :environment do
      include ::Karamzin
      include Concerns::RequestCounter

      token = ENV['TELEGRAM_BOT_TOKEN']

      Telegram::Bot::Client.run(token) do |bot|
        bot.listen do |message|
          case message.text
          when '/start'
            bot.api.send_message(chat_id: message.chat.id, text: "Привет, #{message.from.first_name}. Я - Карамзин. Я не великий историк и литератор, я - программа. Я могу расставить в твоём тексте буквы Ё в тех словах, где это нужно. Просто отправь свой текст.")
          when '/stop'
            bot.api.send_message(chat_id: message.chat.id, text: "Пока, #{message.from.first_name}")
          else
            text = insert message.text
            increase_request_counter :telegram
            bot.api.send_message(chat_id: message.chat.id, text: text)
          end
        end
      end
    end
  end
end
