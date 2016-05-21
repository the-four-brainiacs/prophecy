class Product
  include Mongoid::Document 
  
  field :product_id, type: Integer
  field :name, type: Hash
  field :description, type: Hash
  field :url, type: Hash
  field :price, type: Float
  field :image_url, type: String
  field :categories, type: Array
end