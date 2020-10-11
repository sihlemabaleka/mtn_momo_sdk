part of swagger.api;

class ErrorReason {
  
  String code = null;
  //enum codeEnum {  RESOURCE_NOT_FOUND,  RESOURCE_ALREADY_EXIST,  };

  String message = null;

  ErrorReason();

  @override
  String toString() {
    return 'ErrorReason[code=$code, message=$message, ]';
  }

  ErrorReason.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = json['code'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'message': message
     };
  }

  static List<ErrorReason> listFromJson(List<dynamic> json) {
    return json == null ? new List<ErrorReason>() : json.map((value) => new ErrorReason.fromJson(value)).toList();
  }

  static Map<String, ErrorReason> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ErrorReason>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ErrorReason.fromJson(value));
    }
    return map;
  }
}
