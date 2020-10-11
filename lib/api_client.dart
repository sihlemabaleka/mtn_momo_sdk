part of mtn_momo.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class MTNMoMo {
  String basePath;
  var client = new BrowserClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  MTNMoMo({this.basePath: "https://sandbox.momodeveloper.mtn.com"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['apiKeyHeader'] =
        new ApiKeyAuth("header", "Ocp-Apim-Subscription-Key");
    _authentications['apiKeyQuery'] =
        new ApiKeyAuth("query", "subscription-key");
  }

  void addSubscriptionKeyHeader({String subscriptionKey}) {
    _defaultHeaderMap["Ocp-Apim-Subscription-Key"] = subscriptionKey;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'ApiUser':
          return new ApiUser.fromJson(value);
        case 'ApiUserKeyResult':
          return new ApiUserKeyResult.fromJson(value);
        case 'ApiUserResult':
          return new ApiUserResult.fromJson(value);
        case 'Balance':
          return new Balance.fromJson(value);
        case 'BooleanResult':
          return new BooleanResult.fromJson(value);
        case 'ErrorReason':
          return new ErrorReason.fromJson(value);
        case 'Party':
          return new Party.fromJson(value);
        case 'PaymentServerUrl':
          return new PaymentServerUrl.fromJson(value);
        case 'PreApproval':
          return new PreApproval.fromJson(value);
        case 'PreApprovalResult':
          return new PreApprovalResult.fromJson(value);
        case 'RequestToPay':
          return new RequestToPay.fromJson(value);
        case 'RequestToPayResult':
          return new RequestToPayResult.fromJson(value);
        case 'TargetEnvironment':
          return new TargetEnvironment.fromJson(value);
        case 'TokenPost200ApplicationJsonResponse':
          return new MoMoAccessToken.fromJson(value);
        case 'TokenPost401ApplicationJsonResponse':
          return new AccessTokenException.fromJson(value);
        case 'Transfer':
          return new Transfer.fromJson(value);
        case 'TransferResult':
          return new TransferResult.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(
          500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(
        500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(
      String path,
      String method,
      Iterable<QueryParam> queryParams,
      Object body,
      Map<String, String> headerParams,
      Map<String, String> formParams,
      String contentType,
      List<String> authNames) async {
    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams
        .where((p) => p.value != null)
        .map((p) => '${p.name}=${p.value}');
    String queryString = ps.isNotEmpty ? '?' + ps.join('&') : '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if (body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded"
          ? formParams
          : serialize(body);
      switch (method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames,
      List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null)
        throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
