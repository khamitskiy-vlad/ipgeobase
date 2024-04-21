# frozen_string_literal: true

require "test_helper"
require "../lib/ipgeobase"

class TestIpgeobase < Minitest::Test
  def setup
    stub_request(:get, "http://ip-api.com/xml/8.8.8.8").
          to_return(:body => %Q(
    <?xml version="1.0" encoding="UTF-8"?>
    <query>
    <status>success</status>
    <country>United States</country>
    <countryCode>US</countryCode>
    <region>VA</region>
    <regionName>Virginia</regionName>
    <city>Ashburn</city>
    <zip>20149</zip>
    <lat>39.03</lat>
    <lon>-77.5</lon>
    <timezone>America/New_York</timezone>
    <isp>Google LLC</isp>
    <org>Google Public DNS</org>
    <as>AS15169 Google LLC</as>
    <query>8.8.8.8</query>
    </query>
    ))
  end

  def test_request_was_sent

  end

  def test_gem_return_metadata

  end
end
