# [Random User Generator API](https://apiverve.com/marketplace/randomusergenerator?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)

Random User Generator produces realistic mock user profiles complete with full names, email addresses, usernames, birth dates, and phone numbers. Paid plans add batch generation, random passwords, and matching AI avatars.

The Random User Generator API provides a simple, reliable way to integrate random user generator functionality into your applications. Built for developers who need production-ready random user generator capabilities without the complexity of building from scratch.

**[View API Details →](https://apiverve.com/marketplace/randomusergenerator?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)**

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![API Status](https://img.shields.io/badge/Status-Active-green.svg)](https://apiverve.com/marketplace/randomusergenerator?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
[![Method](https://img.shields.io/badge/Method-GET-blue.svg)](#)
[![Platform](https://img.shields.io/badge/Platform-Multi--Platform-orange.svg)](#installation)

**Available on:**
[![npm](https://img.shields.io/badge/npm-CB3837?style=flat&logo=npm&logoColor=white)](https://www.npmjs.com/package/@apiverve/randomusergenerator)
[![NuGet](https://img.shields.io/badge/NuGet-004880?style=flat&logo=nuget&logoColor=white)](https://www.nuget.org/packages/APIVerve.API.RandomUserGenerator)
[![PyPI](https://img.shields.io/badge/PyPI-3776AB?style=flat&logo=python&logoColor=white)](https://pypi.org/project/apiverve-randomusergenerator/)
[![RubyGems](https://img.shields.io/badge/RubyGems-E9573F?style=flat&logo=rubygems&logoColor=white)](https://rubygems.org/gems/apiverve_randomusergenerator)
[![Packagist](https://img.shields.io/badge/Packagist-F28D1A?style=flat&logo=packagist&logoColor=white)](https://packagist.org/packages/apiverve/randomusergenerator)
[![Go](https://img.shields.io/badge/Go-00ADD8?style=flat&logo=go&logoColor=white)](#-go)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=flat&logo=dart&logoColor=white)](https://pub.dev/packages/apiverve_randomusergenerator)
[![JitPack](https://img.shields.io/badge/JitPack-2E7D32?style=flat&logo=android&logoColor=white)](#-android-jitpack)

---

## Quick Start

### Using JavaScript

```javascript
async function callRandomUserGeneratorAPI() {
    try {
        const response = await fetch('https://api.apiverve.com/v1/randomusergenerator', {
            method: 'GET',
            headers: {
                'x-api-key': 'YOUR_API_KEY_HERE'
            }
        });

        const data = await response.json();
        console.log(data);
    } catch (error) {
        console.error('Error:', error);
    }
}

callRandomUserGeneratorAPI();
```

### Using cURL

```bash
curl -X GET "https://api.apiverve.com/v1/randomusergenerator" \
  -H "x-api-key: YOUR_API_KEY_HERE"
```

**Get your API key:** [https://apiverve.com](https://apiverve.com)

**📁 For more examples, see the [examples folder](./examples/)**

---

## Installation

Choose your preferred programming language:

### 📦 NPM (JavaScript/Node.js)

```bash
npm install @apiverve/randomusergenerator
```

[**View NPM Package →**](https://www.npmjs.com/package/@apiverve/randomusergenerator) | [**Package Code →**](./npm/)

---

### 🔷 NuGet (.NET/C#)

```bash
dotnet add package APIVerve.API.RandomUserGenerator
```

[**View NuGet Package →**](https://www.nuget.org/packages/APIVerve.API.RandomUserGenerator) | [**Package Code →**](./nuget/)

---

### 🐍 Python (PyPI)

```bash
pip install apiverve-randomusergenerator
```

[**View PyPI Package →**](https://pypi.org/project/apiverve-randomusergenerator/) | [**Package Code →**](./python/)

---

### 💎 Ruby (RubyGems)

```bash
gem install apiverve_randomusergenerator
```

[**View RubyGems Package →**](https://rubygems.org/gems/apiverve_randomusergenerator) | [**Package Code →**](./ruby/)

---

### 🐘 PHP (Packagist)

```bash
composer require apiverve/randomusergenerator
```

[**View Packagist Package →**](https://packagist.org/packages/apiverve/randomusergenerator) | [**Package Code →**](./php/)

---

### 🎯 Dart (pub.dev)

```bash
dart pub add apiverve_randomusergenerator
```

[**View pub.dev Package →**](https://pub.dev/packages/apiverve_randomusergenerator) | [**Package Code →**](./dart/)

---

### 🤖 Android (JitPack)

```gradle
implementation 'com.github.apiverve:randomusergenerator-api:1.0.0'
```

[**Package Code →**](./android/)

---

### 🐹 Go

```bash
go get github.com/apiverve/randomusergenerator-api/go
```

[**Package Code →**](./go/)

---

## Why Use This API?

| Feature | Benefit |
|---------|---------|
| **Multi-language SDKs** | Native packages for JavaScript, Python, C#, Go, and Android |
| **Simple Integration** | Single API key authentication, consistent response format |
| **Production Ready** | 99.9% uptime SLA, served from 24 global regions |
| **Comprehensive Docs** | Full examples, OpenAPI spec, and dedicated support |

---

## Documentation

- 🏠 **API Home:** [Random User Generator API](https://apiverve.com/marketplace/randomusergenerator?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 📚 **API Reference:** [docs.apiverve.com/ref/randomusergenerator](https://docs.apiverve.com/ref/randomusergenerator)
- 📖 **OpenAPI Spec:** [openapi.yaml](./openapi.yaml)
- 💡 **Examples:** [examples/](./examples/)

---

## What Can You Build?

The Random User Generator API is commonly used for:

- **Web Applications** - Add random user generator features to your frontend or backend
- **Mobile Apps** - Native SDKs for Android development
- **Automation** - Integrate with n8n, Zapier, or custom workflows
- **SaaS Products** - Enhance your product with random user generator capabilities
- **Data Pipelines** - Process and analyze data at scale

---

## API Reference

### Authentication
All requests require an API key in the header:
```
x-api-key: YOUR_API_KEY_HERE
```

Get your API key: [https://apiverve.com](https://apiverve.com)

### Response Format

Every APIVerve endpoint returns the same envelope — check `status`, then read `data`:

```json
{
  "status": "ok",
  "error": null,
  "data": { ... }
}
```

### Example Response

A real response from the Random User Generator API:

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

---

## Support & Community

- 🏠 **API Home**: [Random User Generator API](https://apiverve.com/marketplace/randomusergenerator?utm_source&#x3D;github&amp;utm_medium&#x3D;referral&amp;utm_content&#x3D;readme)
- 💬 **Support**: [https://apiverve.com/contact](https://apiverve.com/contact)
- 🐛 **Issues**: [GitHub Issues](../../issues)
- 📖 **Documentation**: [https://docs.apiverve.com](https://docs.apiverve.com)
- 🌐 **Website**: [https://apiverve.com](https://apiverve.com)

---

## Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for guidelines.

---

## Security

For security concerns, please review our [Security Policy](SECURITY.md).

---

## License

This project is licensed under the **MIT License** - see the [LICENSE](LICENSE) file for details.

---

## Acknowledgments

Built with ❤️ by [APIVerve](https://apiverve.com)

Copyright © 2026 APIVerve. All rights reserved.
