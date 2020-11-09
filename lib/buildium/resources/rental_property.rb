module Buildium
  module Resources
    class RentalProperty < Base
      def self.retrieve_rentals
        request do
          @path = "/rentals"
        end
      end

      # @params
      #
      # Name
      # StructureDescriptions
      # Address
      # RentalOwnerIds
      # OperatingBankAccountId
      # Reserve
      # YearBuilt
      def self.create_rental(data:)
        request do
          @data = data
          @method = :post
          @path = "/rentals"
        end
      end

      def self.retrieve_rental_owners
        request do
          @path = "/rentals/owners"
        end
      end

      def self.create_rental_owner(data:)
        request do
          @data = data
          @method = :post
          @path = "/rentals/owners"
        end
      end

      def self.retrieve_rental_owner(rental_owner_id:)
        request do
          @path = "/rentals/owners/#{rental_owner_id}"
        end
      end

      # @params
      #
      # FirstName
      # LastName
      # IsCompany
      # DateOfBirth
      # ManagementAgreementStartDate
      # ManagementAgreementEndDate
      # Email
      # AlternateEmail
      # PhoneNumbers
      # Address
      # Comment
      # PropertyIds
      def self.update_rental_owner(rental_owner_id:, data:)
        request do
          @data = data
          @method = :put
          @path = "/rentals/owners/#{rental_owner_id}"
        end
      end

      def self.retrieve_rental_units
        request do
          @path = "/rentals/units"
        end
      end

      def self.
        request do
          @path = ""
        end
      end
    end
  end
end
