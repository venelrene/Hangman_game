Rails.application.routes.draw do
  root 'home#index'

  resource :games, :only => [:new, :show, :update, :destroy]
end
