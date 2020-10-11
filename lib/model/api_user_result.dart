part of mtn_momo.api;

class MoMoUserResult {
  /* The provider callback host */
  String providerCallbackHost = null;

  PaymentServerUrl paymentServerUrl = null;

  TargetEnvironment targetEnvironment = null;

  MoMoUserResult();

  @override
  String toString() {
    return 'MoMoUserResult[providerCallbackHost=$providerCallbackHost, paymentServerUrl=$paymentServerUrl, targetEnvironment=$targetEnvironment, ]';
  }

  MoMoUserResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    providerCallbackHost = json['providerCallbackHost'];
    paymentServerUrl = new PaymentServerUrl.fromJson(json['paymentServerUrl']);
    targetEnvironment =
        new TargetEnvironment.fromJson(json['targetEnvironment']);
  }

  Map<String, dynamic> toJson() {
    return {
      'providerCallbackHost': providerCallbackHost,
      'paymentServerUrl': paymentServerUrl,
      'targetEnvironment': targetEnvironment
    };
  }

  static List<MoMoUserResult> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<MoMoUserResult>()
        : json.map((value) => new MoMoUserResult.fromJson(value)).toList();
  }

  static Map<String, MoMoUserResult> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MoMoUserResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new MoMoUserResult.fromJson(value));
    }
    return map;
  }
}
