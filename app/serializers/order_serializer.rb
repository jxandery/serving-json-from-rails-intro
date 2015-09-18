class OrderSerializer < ActiveModel::Serializer
  attributes :id,
             :amount,
             :user_id,
             :order_user

  has_many :items

  def order_user
    User.find(object.user_id).name
  end
end
