module Buildium
  module Resources
    class Lease < Base
      def self.retrieve_leases
        request do
          @path = "/leases"
        end
      end

      def self.retrieve_tenants
        request do
          @path = "/leases/tenants"
        end
      end

      def self.retrieve_tenant(tenant_id:)
        request do
          @path = "/leases/tenants/#{tenant_id}"
        end
      end

      def self.retrieve_lease(lease_id:)
        request do
          @path = "/leases/#{lease_id}"
        end
      end

      def self.retrieve_lease_transactions(lease_id:)
        request do
          @path = "/leases/#{lease_id}/transactions"
        end
      end
    end
  end
end
