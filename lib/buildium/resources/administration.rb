module Buildium
  module Resources
    class Administration < Base
      def self.get_user_roles
        request do
          @path = "/userrroles"
        end
      end

      def self.get_user_role(role_id:)
        request do
          @path = "/userroles/#{role_id}"
        end
      end

      def self.get_users
        request do
          @path = "/users"
        end
      end

      def self.get_user(user_id:)
        request do
          @path = "/users/#{user_id}"
        end
      end
    end
  end
end
