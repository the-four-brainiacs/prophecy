namespace :prophecy do
  desc "Import products from catalog URL"
  task :import_catalog => :environment do
    Rails.logger.info 'Importing...'
    
    url = Setting.first.catalog_url
    response = HTTParty.get(url)
    json_response = JSON.parse(response)
    json_response.each do |json|
      create_or_update_product(json)
    end
    
    Rails.logger.info 'Catalog imported!'
  end

  def create_or_update_product(json)
    product = Product.find_or_initialize_by(product_id: json['product_id'])
    product.update(
      name: json['name'],
      description: json['description'],
      url: json['url'],
      price: json['price'],
      image_url: json['image_url'],
      categories: json['categories']
    )
  end
end