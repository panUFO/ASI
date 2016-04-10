json.array!(@champions) do |champion|
  json.extract! champion, :id, :nazwa, :typ, :cena
  json.url champion_url(champion, format: :json)
end
