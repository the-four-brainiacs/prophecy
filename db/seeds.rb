User.destroy_all
Setting.destroy_all

# Creat user
User.create email: 'user@prophecy.com', password: 'abcd1234', password_confirmation: 'abcd1234'

# Create settings
Setting.create catalog_url: 'http://url_to_catalog.json'