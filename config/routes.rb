Rails.application.routes.draw do
  devise_for :users
  root 'welcome#login'
  get 'dashboard', to: 'dashboard#summary', as: 'dashboard'
  get 'catalog', to: 'catalog#edit', as: 'edit_catalog'
  patch 'catalog', to: 'catalog#update', as: 'catalog'  
end
