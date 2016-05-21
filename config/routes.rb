Rails.application.routes.draw do
  devise_for :users
  root 'welcome#index'
	get 'dashboard', to: 'dashboard#summary', as: 'dashboard'  
end
