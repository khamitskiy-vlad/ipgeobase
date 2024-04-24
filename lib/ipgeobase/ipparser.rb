# frozen_string_literal: true

module Ipgeobase
  class IpParser
    def lookup(ip)
      responce = Nokogiri::XML(URI.open("http://ip-api.com/xml/#{ip}"))
      responce.root
    end
  end
end
