class ItemSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :description,
             :image_url,
             :order_count

  has_many :orders

  def order_count
    object.orders.count
  end
end
