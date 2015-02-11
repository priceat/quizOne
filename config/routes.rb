QuizOne::Application.routes.draw do
 
  resources :profiles

  root 'profiles#index'

end
