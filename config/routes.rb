Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'lessons#index'})
  match('/', {:via => :post, :to => 'lessons#create'})
  match('/:id', {:via => :delete, :to => 'lessons#delete'})
  match('/show/:id', {:via => :get, :to => 'lessons#show'})
  match('/edit/:id', {:via => :get, :to => 'lessons#edit'})
  match('/:id', {:via => [:patch, :put], :to => 'lessons#update'})
end
