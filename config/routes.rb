Rails.application.routes.draw do
  root "todos#index"

  resources :todos do
    get 'incomplete', on: :collections
    put "mark_complete"
  end

end
