json.array!(@posttitles) do |posttitle|
  json.extract! posttitle, :id, :text
  json.url posttitle_url(posttitle, format: :json)
end
