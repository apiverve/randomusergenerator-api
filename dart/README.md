# Random User Generator API - Dart/Flutter Client

Random User Generator produces realistic mock user profiles complete with full names, email addresses, usernames, birth dates, and phone numbers. Paid plans add batch generation, random passwords, and matching AI avatars.

[![pub package](https://img.shields.io/pub/v/apiverve_randomusergenerator.svg)](https://pub.dev/packages/apiverve_randomusergenerator)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This is the Dart/Flutter client for the [Random User Generator API](https://apiverve.com/marketplace/randomusergenerator?utm_source=dart&utm_medium=referral&utm_content=readme).

## Installation

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  apiverve_randomusergenerator: ^1.2.6
```

Then run:

```bash
dart pub get
# or for Flutter
flutter pub get
```

## Usage

```dart
import 'package:apiverve_randomusergenerator/apiverve_randomusergenerator.dart';

void main() async {
  final client = RandomusergeneratorClient('YOUR_API_KEY');

  try {
    final response = await client.execute({
      'count': 1,
      'includeAvatar': true,
      'gender': '',
      'nationality': '',
      'seed': ''
    });

    print('Status: ${response.status}');
    print('Data: ${response.data}');
  } catch (e) {
    print('Error: $e');
  }
}
```

## Response

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

## API Reference

- **API Home:** [Random User Generator API](https://apiverve.com/marketplace/randomusergenerator?utm_source=dart&utm_medium=referral&utm_content=readme)
- **Documentation:** [docs.apiverve.com/ref/randomusergenerator](https://docs.apiverve.com/ref/randomusergenerator?utm_source=dart&utm_medium=referral&utm_content=readme)

## Authentication

All requests require an API key. Get yours at [apiverve.com](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme).

## License

MIT License - see [LICENSE](LICENSE) for details.

---

Built with Dart for [APIVerve](https://apiverve.com?utm_source=dart&utm_medium=referral&utm_content=readme)
