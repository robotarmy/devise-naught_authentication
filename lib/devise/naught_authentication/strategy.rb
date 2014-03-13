module Devise
  module Strategies
    class NaughtAuthentication < Devise::Strategies::Authenticatable

      # This check is run before +authenticate!+ is called to determine if this
      # authentication strategy is applicable. In this case we only try to authenticate
      # if the login and password are present
      #
      def valid?
        false
      end

      def authenticate!
        fail! "This is Naught Authentication"
      end
    end
  end
end

Warden::Strategies.add(:naught_authentication, Devise::Strategies::NaughtAuthentication)
