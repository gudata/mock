Mock::Application.routes.draw do
  resources :categories, :only => [:show] do
    resources :comments do
      
    end
  end

  root :to => 'categories#homepage'

end
