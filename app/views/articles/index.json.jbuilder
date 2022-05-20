json.array!(@articles) do |article|
  json.id article.id
  json.title article.title
  json.description article.description
end