# Ipgeobase

Ipgeobase gem returns IP metadata. This gem contains a main method `lookup()` that takes an IP address and returns object metadata.

The metadata contains the following fields:

`city` - city
`country` - country
`countryCode` - country code
`lat` - latitude
`lon` - longitude

## Usage

```ruby
ip_meta = Ipgeobase.lookup('8.8.8.8')

ip_meta.city # Ashburn
ip_meta.country # United States
ip_meta.countryCode # US
ip_meta.lat # 39.03
ip_meta.lon # -77.5
```

## Development

  * [Webmock](https://github.com/bblimke/webmock) is used to mock requests.
  * [Simplecov](https://github.com/simplecov-ruby/simplecov) is used to calculate test coverage.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/khamitskiy-vlad/ipgeobase.
