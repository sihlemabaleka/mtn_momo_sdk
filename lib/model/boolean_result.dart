part of mtn_momo.api;

class BooleanResult {
  
  bool result = null;

  BooleanResult();

  @override
  String toString() {
    return 'BooleanResult[result=$result, ]';
  }

  BooleanResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    result = json['result'];
  }

  Map<String, dynamic> toJson() {
    return {
      'result': result
     };
  }

  static List<BooleanResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<BooleanResult>() : json.map((value) => new BooleanResult.fromJson(value)).toList();
  }

  static Map<String, BooleanResult> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BooleanResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BooleanResult.fromJson(value));
    }
    return map;
  }
}
