class BrewerySerializer < ActiveModel::Serializer
  attributes :id, :brewery_name, :brewery_type, :street, :city, :state, :postal_code, :lng, :lat, :phone, :website_url
  has_many :favorites
  has_many :notes
end
