Election2012::Application.routes.draw do
  resources :candidates
  resources :parties
  
  namespace :admin do |admin|
    match '/' => 'dashboard#index'
    resources :candidates
    resources :parties
  end
end
