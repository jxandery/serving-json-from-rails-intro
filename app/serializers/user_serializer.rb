class UserSerializer < ActiveModel::Serializer
  attributes :id,
             :name,
             :email,
             :first_name

  has_many :orders

  def first_name
    object.name.split.first
  end
end
