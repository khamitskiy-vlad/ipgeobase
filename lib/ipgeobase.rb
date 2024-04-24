# frozen_string_literal: true

require_relative "ipgeobase/version"
require_relative "ipgeobase/ipparser"
require "open-uri"
require "nokogiri"

module Ipgeobase
  class Error < StandardError; end

  def self.lookup ip
    IpParser.new.lookup ip
  end

  Nokogiri::XML::Element.class_eval do
    def city
      self.xpath('city').text
    end

    def country
      self.xpath('country').text
    end

    def countryCode
      self.xpath('countryCode').text
    end
    
    def lat
      self.xpath('lat').text
    end
    
    def lon
      self.xpath('lon').text
    end
  end
end
