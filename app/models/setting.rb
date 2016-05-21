class Setting
  include Mongoid::Document 
  
  field :catalog_url, type: String

  validates :catalog_url, presence: true
end