require "devise/naught_authentication/strategy"
Devise.add_module :naught_authentication,
                  :model => 'devise/token_authenticatable/model',
                  :strategy => true, 
                  :controller => :sessions,
                  :route => :session

