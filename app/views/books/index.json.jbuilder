json.array!(@books) do |book|
  json.extract! book, :title, :description, :price
  json.url book_url(book, format: :json)
end
