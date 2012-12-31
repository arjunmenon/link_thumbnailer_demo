LinkThumbnailerDemo::Application.routes.draw do
  use_link_thumbnailer

  root :to => 'home#index'
end
