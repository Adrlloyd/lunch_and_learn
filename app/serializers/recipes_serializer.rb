class RecipesSerializer
  include JSONAPI::Serializer
  set_id {nil}
  attributes :country, :title, :url, :image
end