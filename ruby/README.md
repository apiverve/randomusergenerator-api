# Random User Generator API - Ruby Gem

Random User Generator produces realistic mock user profiles complete with full names, email addresses, usernames, birth dates, and phone numbers. Paid plans add batch generation, random passwords, and matching AI avatars.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_randomusergenerator'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_randomusergenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_randomusergenerator'

# Initialize the client
client = APIVerve::Randomusergenerator::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  count: 1,
  includeAvatar: true,
  gender: "",
  nationality: "",
  seed: ""
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ count: 1, includeAvatar: true, gender: "", nationality: "", seed: "" })
  puts response["data"]
rescue APIVerve::Randomusergenerator::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Randomusergenerator::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Randomusergenerator::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": [
    {
      "id": "aeb01cae-300b-4e54-9cb0-76ce52d6b315",
      "name": "Monique Torp",
      "gender": "Female",
      "username": "Monique.Torp",
      "email": "Monique_Torp41@hotmail.com",
      "password": "V7s6IHRMhlniG98",
      "registered": "2026-01-10T15:18:03.898Z",
      "phone": "1-967-684-8927 x83452",
      "cell": "1-555-737-7469 x885",
      "birthdate": "1976-03-25T20:38:58.998Z",
      "age": 50,
      "nationality": "US",
      "location": {
        "street": "6858 Darrick Ramp",
        "city": "Parkersburg",
        "state": "West Virginia",
        "postcode": "31811-8127",
        "country": "United States of America",
        "countryCode": "US",
        "latitude": 39.27687,
        "longitude": -81.56839,
        "timezone": "America/New_York"
      },
      "login": {
        "salt": "xh1696HT",
        "md5": "5ebad82435f817d5837916fa2885b95c",
        "sha1": "b62baac1003eed109f32b3305bf049516f175819",
        "sha256": "02a99836191088b702972c5153c9d4ce2290d39bb90de141b467f302e62e8143"
      },
      "avatar": "https://storage.googleapis.com/apiverve/APIResources/faces/Female/50-60/87654321.jpg?X-Goog-Signature=..."
    }
  ]
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/randomusergenerator?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/randomusergenerator?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/randomusergenerator?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
