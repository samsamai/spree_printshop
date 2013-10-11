Spree::Core::Engine.routes.draw do
  # Add your extension routes here


  namespace :admin do
    get '/import', controller: :import, action: :index, as: :import_index
    post '/import/new', controller: :import, action: :new, as: :import_new, defaults: { format: 'html' }
  end
end
