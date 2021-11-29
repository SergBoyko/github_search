Rails.application.routes.draw do

  root to: "git_search#index"
  post 'result' => 'git_search#result'
  get 'result' => 'git_search#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
