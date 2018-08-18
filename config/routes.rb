Rails.application.routes.draw do
  root :to => 'prayers#index'

  get 'prayers/index'
  get 'prayerlist/index'

  get 'prayers/get_english_name', :to => 'prayers#get_english_name'
  get 'prayers/get_prayee_english_name', :to => 'prayers#get_prayee_english_name'
  get 'prayers/get_english_relation', :to => 'prayers#get_english_relation'
  resources :prayers
  resources :prayerlists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
