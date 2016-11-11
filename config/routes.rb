Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root 'static#home'

  get '/start', to: 'stories#new', as: :start
  get '/recover', to: 'stories#recover', as: :recover_story

  resources :stories, only: [:create]

  scope ':token' do
    get :political_views, to: 'story_creation#political_views', as: :political_views
    get :username, to: 'story_creation#set_username', as: :set_username
    patch :update, to: 'story_creation#update', as: :update_story
  end
end
