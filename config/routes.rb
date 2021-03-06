Rails.application.routes.draw do
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  get '/jobtrackers/user/:user_id', to: 'jobtrackers#getjobs'
  get '/cohorts/user/:cohort_id', to: 'cohorts#getStudents'
  get '/tasks/user/:user_id', to:'tasks#getTasks'
  
  resources :users, only: [:create, :show, :index, :update]
  resources :tasks
  resources :jobtrackers
  resources :cohorts
end
