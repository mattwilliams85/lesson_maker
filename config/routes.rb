Rails.application.routes.draw do
  match('/', {:via => :get, :to => 'chapters#index'})
  match('/:id', {:via => :post, :to => 'lessons#create'})
  match('/:chapter_id/:id', {:via => :delete, :to => 'lessons#delete'})
  match('/show/:id', {:via => :get, :to => 'lessons#show'})
  match('/edit/:id', {:via => :get, :to => 'lessons#edit'})
  match('/:id', {:via => [:patch, :put], :to => 'lessons#update'})
  match('/view', {:via => :get, :to => 'lessons#view'})
  match('/content_view/:id', {:via => :get, :to => 'lessons#content_view'})
  match('/', {:via => :post, :to => 'chapters#create'})
  match('/:id', {:via => :delete, :to => 'chapters#delete'})
  match('/chapter/:id', {:via => :get, :to => 'lessons#new_lesson'})
end
