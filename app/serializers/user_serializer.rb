class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :email, :date_of_birth
  has_many :favorites
  has_many :notes
end
