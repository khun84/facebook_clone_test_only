Rails.application.routes.draw do

    root 'welcome#index'

    delete '/session/destroy' => 'sessions#destroy', as: :signout
    resources :sessions

    resources :users do
        # resources :statuses, only: [:new, :create, :edit, :update, :destroy]

    end

    resources :statuses

    resources :likes

end
