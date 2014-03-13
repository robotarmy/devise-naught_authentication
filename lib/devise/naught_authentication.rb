require "devise/naught_authentication/strategy"
Devise.add_module :naught_authentication,
                  :strategy => true, 
                  :controller => :sessions,
                  :route => :session

