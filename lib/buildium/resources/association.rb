module Buildium
  module Resources
    class Association < Base
      def self.get_associations
        request do
          @path = "/associations"
        end
      end

      # @params
      #
      # Name
      # OperatingBankAccount
      # Address
      # IsActive
      # Reserve
      # Description
      # YearBuilt
      def self.create_association(data:)
        request do
          @data = data
          @method = :post
          @path = "/bank_accounts"
        end
      end

      def self.get_association_owners
        request do
          @path = "/associations/owners"
        end
      end

      def self.get_association_owner(owner_id:)
        request do
          @path = "/associations/owners/#{owner_id}"
        end
      end

      def self.get_ownership_accounts
        request do
          @path = "/associations/ownershipaccounts"
        end
      end

      def self.get_association_ownership_account(ownership_account_id:)
        request do
          @path = "/associations/ownershipaccounts/#{ownership_account_id}"
        end
      end

      def self.get_ownership_account_transactions(ownership_account_id:)
        request do
          @path = "/associations/ownershipaccounts/#{ownership_account_id}/transactions"
        end
      end

      def self.get_association_tenants
        request do
          @path = "/association/tenants"
        end
      end

      # @params
      #
      # FirstName
      # LastName
      # Email
      # AlternateEmail
      # PhoneNumbers
      # DateOfBirth
      # Comment
      # EmergencyContact
      # PrimaryAddress
      # AlternateAddress
      # MoveInDate
      # MoveOutDate
      # OwnershipAccountId
      def self.create_association_tenant(data:)
        request do
          @data = data
          @path = "/associations/tenants"
        end
      end

      def self.get_association_tenant(tenant_id:)
        request do
          @path = "/associations/tenants/#{tenant_id}"
        end
      end

      # @params
      #
      # FirstName
      # LastName
      # Email
      # AlternateEmail
      # PhoneNumbers
      # DateOfBirth
      # Comment
      # EmergencyContact
      # PrimaryAddress
      # AlternateAddress
      def self.update_association_tenant(tenant_id:, data:)
        request do
          @data = data
          @path = "/associations/tenants/#{tenant_id}"
        end
      end

      def self.get_association_units
        request do
          @data = data
          @path = "/associations/units"
        end
      end

      # @params
      #
      # UnitNumber
      # AssociationId
      # UnitSize
      # Address
      # UnitBedrooms
      # UnitBathrooms
      def self.create_association_unit(data:)
        request do
          @data = data
          @method = :post
          @path = "/associations/units"
        end
      end

      def self.get_association_unit(unit_id:)
        request do
          @path = "/association/units/#{unit_id}"
        end
      end

      def self.update_association_unit(unit_id:, data:)
        request do
          @data = data
          @method = :put
          @path = "/associations/units/#{unit_id}"
        end
      end

      def self.get_association(association_id:)
        request do
          @path = "/associations/#{association_id}"
        end
      end

      def self.update_association(association_id:)
        request do
          @method = :put
          @path = "/associations/#{association_id}"
        end
      end
    end
  end
end
