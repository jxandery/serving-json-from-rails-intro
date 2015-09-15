class ItemSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :description,
             :image_url

  has_many :orders

end
