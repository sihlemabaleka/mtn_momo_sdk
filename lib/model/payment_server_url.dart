part of swagger.api;

class PaymentServerUrl {
  /* The payment server URL */
  String apiKey = null;

  PaymentServerUrl();

  @override
  String toString() {
    return 'PaymentServerUrl[apiKey=$apiKey, ]';
  }

  PaymentServerUrl.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    apiKey = json['apiKey'];
  }

  Map<String, dynamic> toJson() {
    return {
      'apiKey': apiKey
     };
  }

  static List<PaymentServerUrl> listFromJson(List<dynamic> json) {
    return json == null ? new List<PaymentServerUrl>() : json.map((value) => new PaymentServerUrl.fromJson(value)).toList();
  }

  static Map<String, PaymentServerUrl> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PaymentServerUrl>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PaymentServerUrl.fromJson(value));
    }
    return map;
  }
}
