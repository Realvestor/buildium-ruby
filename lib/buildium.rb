require "buildium/resources/accounting"
require "buildium/resources/administration"
require "buildium/resources/association"
require "buildium/resources/lease"
require "buildium/resources/rental_property"
require "buildium/resources/vendor"
require "buildium/resources/administration"


module Buildium
  class << self
    attr_accessor :environment, :api_key
  end
end
