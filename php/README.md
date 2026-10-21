# Random User Generator API - PHP Package

Random User Generator produces realistic mock user profiles complete with full names, email addresses, usernames, birth dates, and phone numbers. Paid plans add batch generation, random passwords, and matching AI avatars.

## Installation

Install via Composer:

```bash
composer require apiverve/randomusergenerator
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Randomusergenerator\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'count' => 1,
    'includeAvatar' => true
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Randomusergenerator\Client;
use APIVerve\Randomusergenerator\Exceptions\APIException;
use APIVerve\Randomusergenerator\Exceptions\ValidationException;

try {
    $response = $client->execute(['count' => 1, 'includeAvatar' => true]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/randomusergenerator?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/randomusergenerator?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/randomusergenerator?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
