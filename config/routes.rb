Rails.application.routes.draw do
  devise_for :companies

  get '/vacancies/all' => 'vacancies#all'

  authenticated :company do
    root to: 'vacancies#index', as: :company_root
  end
  unauthenticated :company do
    root to: 'vacancies#all', as: 'unathenticated_root'
  end
  resources :applicants
  resources :vacancies
  resources :companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
