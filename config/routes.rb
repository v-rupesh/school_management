Rails.application.routes.draw do
  devise_for :teachers
  resources :students
  devise_scope :teacher do
    get 'teachers/sign_out', to: 'devise/sessions#destroy'
  end
end
