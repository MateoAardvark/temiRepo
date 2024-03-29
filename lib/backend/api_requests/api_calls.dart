import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class PostZapierCall {
  static Future<ApiCallResponse> call({
    String? nombre = '',
    String? bookingId = '',
    String? phoneNumber = '',
    String? email = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Post Zapier',
      apiUrl: 'https://hooks.zapier.com/hooks/catch/2982759/3clqd4h/',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'name': nombre,
        'booking': bookingId,
        'phone_number': phoneNumber,
        'email': email,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PostCheckoutCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? room = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Post Checkout',
      apiUrl: 'https://hooks.zapier.com/hooks/catch/2982759/305op6j/',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'name': name,
        'room': room,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PostRoomCall {
  static Future<ApiCallResponse> call({
    String? name = '',
    String? room = '',
    String? description = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Post Room',
      apiUrl: 'https://hooks.zapier.com/hooks/catch/2982759/3052vwb/',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'name': name,
        'room': room,
        'description': description,
      },
      bodyType: BodyType.X_WWW_FORM_URL_ENCODED,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetHolaCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getHola',
      apiUrl: 'https://hooks.zapier.com/hooks/catch/2982759/3xjeabc/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
