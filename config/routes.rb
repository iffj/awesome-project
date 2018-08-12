Rails.application.routes.draw do
  get 'prayers/index'

  get 'prayers/get_english_name', :to => 'prayers#get_english_name'
  get 'prayers/get_prayee_english_name', :to => 'prayers#get_prayee_english_name'

  resources :prayers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
