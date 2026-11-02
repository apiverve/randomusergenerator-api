# Random User Generator API

Random User Generator produces realistic mock user profiles complete with full names, email addresses, usernames, birth dates, and phone numbers. Paid plans add batch generation, random passwords, and matching AI avatars.

[![npm version](https://img.shields.io/npm/v/@apiverve/randomusergenerator.svg)](https://www.npmjs.com/package/@apiverve/randomusergenerator)

This is a JavaScript wrapper for the [Random User Generator API](https://apiverve.com/marketplace/randomusergenerator?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/randomusergenerator
```

Using yarn:
```shell
yarn add @apiverve/randomusergenerator
```

---

## Configuration

Before using the Random User Generator API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The Random User Generator API documentation is found here: [https://docs.apiverve.com/ref/randomusergenerator](https://docs.apiverve.com/ref/randomusergenerator?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const randomusergeneratorAPI = require('@apiverve/randomusergenerator');
const api = new randomusergeneratorAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  count: 1,
  includeAvatar: false,
  gender: "",
  nationality: "",
  seed: ""
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  count: 1,
  includeAvatar: false,
  gender: "",
  nationality: "",
  seed: ""
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  count: 1,
  includeAvatar: false,
  gender: "",
  nationality: "",
  seed: ""
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

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

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
