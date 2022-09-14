class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :author_id, :image
end
