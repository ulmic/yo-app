Configus.build Rails.env do
  env :production do
    links do
      karamzin do
        karamzin250 'http://karamzin250.ru'
        wikipedia 'https://ru.wikipedia.org/wiki/%D0%9A%D0%B0%D1%80%D0%B0%D0%BC%D0%B7%D0%B8%D0%BD,_%D0%9D%D0%B8%D0%BA%D0%BE%D0%BB%D0%B0%D0%B9_%D0%9C%D0%B8%D1%85%D0%B0%D0%B9%D0%BB%D0%BE%D0%B2%D0%B8%D1%87'
      end
    end
  end

  env :development, parent: :production
  env :test, parent: :production
end
