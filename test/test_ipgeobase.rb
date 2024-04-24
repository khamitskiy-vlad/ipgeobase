# frozen_string_literal: true

require_relative "test_helper"
require_relative "../lib/ipgeobase"

class TestIpgeobase < Minitest::Test
  def setup
    xml = %(
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
      )

    stub_request(:get, "http://ip-api.com/xml/8.8.8.8")
      .to_return(body: xml)

    @expected_atrributes = {
      city: "Ashburn",
      country: "United States",
      countryCode: "US",
      lat: "39.03",
      lon: "-77.5"
    }
  end

  def test_gem_return_metadata
    ip_meta = Ipgeobase.lookup("8.8.8.8")

    assert { @expected_atrributes[:city] == ip_meta.city }
    assert { @expected_atrributes[:country] == ip_meta.country }
    assert { @expected_atrributes[:countryCode] == ip_meta.countryCode }
    assert { @expected_atrributes[:lat] == ip_meta.lat }
    assert { @expected_atrributes[:lon] == ip_meta.lon }
  end
end
