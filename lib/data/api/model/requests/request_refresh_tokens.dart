import 'package:flutter/foundation.dart';

import '../../http_client/http_client.dart';
import '../../http_client/i_api_request.dart';

@immutable
class RequestRefreshTokens extends IApiRequest {
  RequestRefreshTokens({
    required this.refreshToken,
  }) : super(
          methodType: AvailableApiMethods.post,
          url: '/tokens/refresh',
        );

  // данные запроса
  final String refreshToken;

  // Тело запроса
  @override
  Map<String, Object?>? get body => {
        'refresh_token': refreshToken,
      };

  // @override
  // String get endPoint => '$initialUrl/$some_args?param=$p1';

}
