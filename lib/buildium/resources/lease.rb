module Buildium
  module Resources
    class Lease < Base
      def self.get_leases
        request do
          @path = "/leases"
        end
      end

      def self.get_tenants
        request do
          @path = "/leases/tenants"
        end
      end

      def self.get_tenant(tenant_id:)
        request do
          @path = "/leases/tenants/#{tenant_id}"
        end
      end

      def self.get_lease(lease_id:)
        request do
          @path = "/leases/#{lease_id}"
        end
      end

      def self.get_lease_transactions(lease_id:)
        request do
          @path = "/leases/#{lease_id}/transactions"
        end
      end
    end
  end
end
