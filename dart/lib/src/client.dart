import 'dart:convert';
import 'package:http/http.dart' as http;
import 'models.dart';

/// Validation rule for a parameter.
class ValidationRule {
  final String type;
  final bool required;
  final num? min;
  final num? max;
  final int? minLength;
  final int? maxLength;
  final String? format;
  final List<String>? enumValues;

  const ValidationRule({
    required this.type,
    required this.required,
    this.min,
    this.max,
    this.minLength,
    this.maxLength,
    this.format,
    this.enumValues,
  });
}

/// Exception thrown when parameter validation fails.
class RandomusergeneratorValidationException implements Exception {
  final List<String> errors;

  RandomusergeneratorValidationException(this.errors);

  @override
  String toString() => 'RandomusergeneratorValidationException: ${errors.join("; ")}';
}

/// Format validation patterns.
final _formatPatterns = {
  'email': RegExp(r'^[^\s@]+@[^\s@]+\.[^\s@]+$'),
  'url': RegExp(r'^https?://.+'),
  'ip': RegExp(r'^(?:(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.){3}(?:25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$|^([0-9a-fA-F]{1,4}:){7}[0-9a-fA-F]{1,4}$'),
  'date': RegExp(r'^\d{4}-\d{2}-\d{2}$'),
  'hexColor': RegExp(r'^#?([0-9a-fA-F]{3}|[0-9a-fA-F]{6})$'),
};

/// Random User Generator API client.
///
/// For more information, visit: https://apiverve.com/marketplace/randomusergenerator?utm_source=dart&utm_medium=referral&utm_content=readme
///
/// Parameters:
/// * [count] - The number of users to generate [min: 1, max: 100]
/// * [includeAvatar] - Include an AI-generated face avatar matching user's gender and age
/// * [gender] - Only generate users of this gender
/// * [nationality] - ISO country code for localised names, phone numbers and addresses (e.g. DE, JP, BR). Defaults to US
/// * [seed] - Any string; the same seed (with the same other parameters) returns the same users, for repeatable test data
class RandomusergeneratorClient {
  final String apiKey;
  final String baseUrl;
  final http.Client _httpClient;

  /// Validation rules for parameters.
  static final Map<String, ValidationRule> _validationRules = <String, ValidationRule>{
    'count': ValidationRule(type: 'integer', required: false, min: 1, max: 100),
    'includeAvatar': ValidationRule(type: 'boolean', required: false),
    'gender': ValidationRule(type: 'string', required: false),
    'nationality': ValidationRule(type: 'string', required: false),
    'seed': ValidationRule(type: 'string', required: false),
  };

  RandomusergeneratorClient(this.apiKey, {
    this.baseUrl = 'https://api.apiverve.com/v1/randomusergenerator',
    http.Client? httpClient,
  }) : _httpClient = httpClient ?? http.Client();

  /// Validates parameters against defined rules.
  /// Throws [RandomusergeneratorValidationException] if validation fails.
  void _validateParams(Map<String, dynamic> params) {
    final errors = <String>[];

    for (final entry in _validationRules.entries) {
      final paramName = entry.key;
      final rule = entry.value;
      final value = params[paramName];

      // Check required
      if (rule.required && (value == null || (value is String && value.isEmpty))) {
        errors.add('Required parameter [$paramName] is missing');
        continue;
      }

      if (value == null) continue;

      // Type-specific validation
      if (rule.type == 'integer' || rule.type == 'number') {
        final numValue = value is num ? value : num.tryParse(value.toString());
        if (numValue == null) {
          errors.add('Parameter [$paramName] must be a valid ${rule.type}');
          continue;
        }
        if (rule.min != null && numValue < rule.min!) {
          errors.add('Parameter [$paramName] must be at least ${rule.min}');
        }
        if (rule.max != null && numValue > rule.max!) {
          errors.add('Parameter [$paramName] must be at most ${rule.max}');
        }
      } else if (rule.type == 'string' && value is String) {
        if (rule.minLength != null && value.length < rule.minLength!) {
          errors.add('Parameter [$paramName] must be at least ${rule.minLength} characters');
        }
        if (rule.maxLength != null && value.length > rule.maxLength!) {
          errors.add('Parameter [$paramName] must be at most ${rule.maxLength} characters');
        }
        if (rule.format != null && _formatPatterns.containsKey(rule.format)) {
          if (!_formatPatterns[rule.format]!.hasMatch(value)) {
            errors.add('Parameter [$paramName] must be a valid ${rule.format}');
          }
        }
      }

      // Enum validation
      if (rule.enumValues != null && rule.enumValues!.isNotEmpty) {
        if (!rule.enumValues!.contains(value.toString())) {
          errors.add('Parameter [$paramName] must be one of: ${rule.enumValues!.join(", ")}');
        }
      }
    }

    if (errors.isNotEmpty) {
      throw RandomusergeneratorValidationException(errors);
    }
  }

  /// Execute a request to the Random User Generator API.
  ///
  /// Parameters are validated before sending the request.
  Future<RandomusergeneratorResponse> execute(Map<String, dynamic> params) async {
    // Validate parameters
    _validateParams(params);
    if (apiKey.isEmpty) {
      throw RandomusergeneratorException('API key is required. Get your API key at: https://apiverve.com');
    }

    try {
      final uri = Uri.parse(baseUrl).replace(
        queryParameters: params.map((key, value) => MapEntry(key, value.toString())),
      );

      final response = await _httpClient.get(
        uri,
        headers: {
          'x-api-key': apiKey,
        },
      );

      if (response.statusCode == 200) {
        final json = jsonDecode(response.body) as Map<String, dynamic>;
        return RandomusergeneratorResponse.fromJson(json);
      } else if (response.statusCode == 401) {
        throw RandomusergeneratorException('Invalid API key');
      } else if (response.statusCode == 404) {
        throw RandomusergeneratorException('Resource not found');
      } else {
        throw RandomusergeneratorException('API error: ${response.statusCode}');
      }
    } catch (e) {
      if (e is RandomusergeneratorException) rethrow;
      throw RandomusergeneratorException('Request failed: $e');
    }
  }


  /// Close the HTTP client.
  void close() {
    _httpClient.close();
  }
}

/// Exception thrown by the Random User Generator API client.
class RandomusergeneratorException implements Exception {
  final String message;

  RandomusergeneratorException(this.message);

  @override
  String toString() => 'RandomusergeneratorException: $message';
}
