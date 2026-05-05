import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
part '../models/network_response.dart';

class NetWorkCaller {
  final Map<String, String> headers;
  final VoidCallback onUnauthorized;

  final Logger _logger = Logger();

  NetWorkCaller({required this.headers, required this.onUnauthorized});

  // get request network caller
  Future<NetworkResponse> getRequest(String url) async {
    try {
      Uri uri = Uri.parse(url);
      _logger.i(url);

      final response = await http.get(uri, headers: headers);
      _logResponse(url, response);
      final decodedResponse = jsonDecode(response.body);

      if (response.statusCode == 200) {
        return NetworkResponse(
          isSuccess: true,
          responseCode: response.statusCode,
          body: decodedResponse,
        );
      } else if (response.statusCode == 401) {
        return NetworkResponse(
          isSuccess: false,
          responseCode: response.statusCode,
          errorMessage: 'UnAuthorize',
        );
      } else {
        return NetworkResponse(
          isSuccess: false,
          responseCode: response.statusCode,
          errorMessage: decodedResponse['body'], // TODO: dynamic response
        );
      }
    } catch (e) {
      return NetworkResponse(
        isSuccess: false,
        responseCode: -1,
        errorMessage: e.toString(),
      );
    }
  }

  // post request network caller
  Future<NetworkResponse> postRequest(
    String url, {
    Map<String, dynamic>? body,
  }) async {
    try {
      Uri uri = Uri.parse(url);
      _logger.i(url);
      final response = await http.post(
        uri,
        headers: headers,
        body: jsonEncode(body),
      );
      _logResponse(url, response);
      final Map<String, dynamic> decodedResponse = jsonDecode(response.body);

      if (response.statusCode == 200 &&
          decodedResponse['status'] == 'success') {
        return NetworkResponse(
          isSuccess: true,
          responseCode: response.statusCode,
          body: decodedResponse,
        );
      } else if (response.statusCode == 401) {
        return NetworkResponse(
          isSuccess: false,
          responseCode: response.statusCode,
          errorMessage: 'UnAuthorize',
        );
      } else {
        return NetworkResponse(
          isSuccess: false,
          responseCode: response.statusCode,
          errorMessage: decodedResponse['data'],
        );
      }
    } catch (e) {
      _logger.e(e.toString());
      return NetworkResponse(
        isSuccess: false,
        responseCode: -1,
        errorMessage: e.toString(),
      );
    }
  }

  void _logRequest(String url) {
   _logger.i('Request: $url');
  }

  void _logResponse(String url, dynamic response) {
    _logger.i(
      'Url: $url\n'
      'Response: ${response.statusCode}\n'
      'Body: ${response.body}',
    );
  }
}
