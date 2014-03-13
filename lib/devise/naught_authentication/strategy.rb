module Devise
  module Strategies
    class NaughtAuthentication < Devise::Strategies::Authenticatable
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
