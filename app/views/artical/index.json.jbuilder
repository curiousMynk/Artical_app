json.array!(@articals) do |artical|
  json.extract! artical, :id, :title, :body
  json.url artical_url(artical, format: :json)
end
