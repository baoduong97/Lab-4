Rails.application.routes.draw do
  root "list#index"
  get "list" => "list#index"
  # get 'files/index'
  get "files" => "files#index"
  get 'say/hello'
  get 'say/goodbye'
  get "about" => "say#about"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
