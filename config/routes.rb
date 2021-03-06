Rails.application.routes.draw do
  get 'tags/:name' => 'tag#show'

  get 'entries/search' => 'entries#search'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  get 'admin/entries' => 'admin_page#entries'
  resources :entries
  resources :tags
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_page#aboutme'
  get 'links' => 'static_page#links'
end
