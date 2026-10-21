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
  includeAvatar: true
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ count: 1, includeAvatar: true })
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
      "id": "967e4d46-963e-4108-a0c5-ded8f630dcc8",
      "name": "Jennifer Hoppe V",
      "gender": "Male",
      "username": "Olen_Kihn88",
      "email": "Juwan5@gmail.com",
      "password": "f0VIWRnbXFvW9Tf",
      "registered": "2025-06-29T22:00:36.084Z",
      "phone": "1-716-677-4155",
      "cell": "1-353-721-7455 x2081",
      "birthdate": "1972-01-24T19:55:15.208Z",
      "avatar": "https://storage.googleapis.com/apiverve/APIResources/faces/Male/40-50/87654321.jpg?X-Goog-Signature=..."
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
