class BrewerySerializer < ActiveModel::Serializer
  attributes :id, :brewery_name, :brewery_type, :street, :city, :state, :postal_code, :phone, :lng, :lat
  has_many :favorites
  has_many :notes
end
