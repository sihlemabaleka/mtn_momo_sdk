part of swagger.api;

class ApiUserResult {
  /* The provider callback host */
  String providerCallbackHost = null;

  PaymentServerUrl paymentServerUrl = null;

  TargetEnvironment targetEnvironment = null;

  ApiUserResult();

  @override
  String toString() {
    return 'ApiUserResult[providerCallbackHost=$providerCallbackHost, paymentServerUrl=$paymentServerUrl, targetEnvironment=$targetEnvironment, ]';
  }

  ApiUserResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    providerCallbackHost = json['providerCallbackHost'];
    paymentServerUrl = new PaymentServerUrl.fromJson(json['paymentServerUrl']);
    targetEnvironment = new TargetEnvironment.fromJson(json['targetEnvironment']);
  }

  Map<String, dynamic> toJson() {
    return {
      'providerCallbackHost': providerCallbackHost,
      'paymentServerUrl': paymentServerUrl,
      'targetEnvironment': targetEnvironment
     };
  }

  static List<ApiUserResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiUserResult>() : json.map((value) => new ApiUserResult.fromJson(value)).toList();
  }

  static Map<String, ApiUserResult> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiUserResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiUserResult.fromJson(value));
    }
    return map;
  }
}
