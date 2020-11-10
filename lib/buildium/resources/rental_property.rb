module Buildium
  module Resources
    class RentalProperty < Base
      def self.get_rentals
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

      def self.get_rental_owners
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

      def self.get_rental_owner(rental_owner_id:)
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

      def self.get_rental_units
        request do
          @path = "/rentals/units"
        end
      end

      # UnitNumber
      # PropertyId
      # UnitSize
      # MarketRent
      # Address
      # UnitBedrooms
      # UnitBathrooms
      # Description
      def self.create_rental_unit(data:)
        request do
          @method = :post
          @data = data
          @path = "/rentals/units"
        end
      end

      def self.get_rental_property_unit(unit_id:)
        request do
          @path = "/rentals/units/#{unit_id}"
        end
      end

      # UnitNumber
      # UnitSize
      # MarketRent
      # Address
      # UnitBedrooms
      # UnitBathrooms
      # Description
      def self.update_rental_unit(unit_id:, data:)
        request do
          @method = :put
          @data = data
          @path = "/rentals/units/#{unit_id}"
        end
      end

      def self.get_rental(property_id:)
        request do
          @path = "/rentals/#{property_id}"
        end
      end

      def self.update_rental_property(property_id:)
        request do
          @path = "/rentals/#{property_id}"
        end
      end
    end
  end
end
