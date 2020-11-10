module Buildium
  module Resources
    class Vendor < Base
      def self.get_vendors
        request do
          @path = "/vendors"
        end
      end

      def self.get_vendor(vendor_id:)
        request do
          @path = "/vendors/#{vendor_id}"
        end
      end
    end
  end
end
