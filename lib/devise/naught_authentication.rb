require "devise/naught_authentication/strategy"
Devise.add_module :naught_authentication,
                  :model => 'devise/naught_authentication/model',
                  :strategy => true, 
                  :controller => :sessions,
                  :route => {:session => [nil,:create,:destroy]}

