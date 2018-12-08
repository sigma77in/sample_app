Rails.application.routes.draw do
  root 'static_pages#home'

#  get 'static_pages/help'               # below is almost same as this one except that,
    get '/help', to: 'static_pages#help' # this way it will create 2 named routes help_path and help_url
                                        # which allows us to refer to routes by
                                            # name rathar than by the raw URL.
                                        # Use help_url for redirects and help_path in all other instances.
                                        
    get '/about', to: 'static_pages#about'
    get '/contact', to: 'static_pages#contact'

#  get 'static_pages/home'
#  get 'static_pages/about'
#  get 'static_pages/contact'

#    root 'application#hello'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
