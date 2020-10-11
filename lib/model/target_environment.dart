part of swagger.api;

class TargetEnvironment {
  /* The target environment */
  String apiKey = null;

  TargetEnvironment();

  @override
  String toString() {
    return 'TargetEnvironment[apiKey=$apiKey, ]';
  }

  TargetEnvironment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    apiKey = json['apiKey'];
  }

  Map<String, dynamic> toJson() {
    return {
      'apiKey': apiKey
     };
  }

  static List<TargetEnvironment> listFromJson(List<dynamic> json) {
    return json == null ? new List<TargetEnvironment>() : json.map((value) => new TargetEnvironment.fromJson(value)).toList();
  }

  static Map<String, TargetEnvironment> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TargetEnvironment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TargetEnvironment.fromJson(value));
    }
    return map;
  }
}
