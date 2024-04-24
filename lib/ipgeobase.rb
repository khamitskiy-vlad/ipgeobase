# frozen_string_literal: true

require_relative "ipgeobase/version"
require_relative "ipgeobase/ipparser"
require "open-uri"
require "nokogiri"

module Ipgeobase
  class Error < StandardError; end

  def self.lookup(ip)
    IpParser.new.lookup(ip)
  end

  Nokogiri::XML::Element.class_eval do
    def city
      xpath("city").text
    end

    def country
      xpath("country").text
    end

    def countryCode
      xpath("countryCode").text
    end

    def lat
      xpath("lat").text
    end

    def lon
      xpath("lon").text
    end
  end
end
