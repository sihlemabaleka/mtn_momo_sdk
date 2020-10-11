part of mtn_momo.api;

class ApiUserKeyResult {
  /* The created API user key */
  String apiKey = null;

  ApiUserKeyResult();

  @override
  String toString() {
    return 'ApiUserKeyResult[apiKey=$apiKey, ]';
  }

  ApiUserKeyResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    apiKey = json['apiKey'];
  }

  Map<String, dynamic> toJson() {
    return {
      'apiKey': apiKey
     };
  }

  static List<ApiUserKeyResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiUserKeyResult>() : json.map((value) => new ApiUserKeyResult.fromJson(value)).toList();
  }

  static Map<String, ApiUserKeyResult> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiUserKeyResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiUserKeyResult.fromJson(value));
    }
    return map;
  }
}
