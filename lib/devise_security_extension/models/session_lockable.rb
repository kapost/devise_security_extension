require 'devise_security_extension/hooks/session_lockable'

module Devise
  module Models
    module SessionLockable
      def self.included(base)
        base.class_eval do
          field :login_attempts, type: Integer, default: 0
          field :most_recent_attempt_at, type: DateTime
        end
      end
    end
  end
end
