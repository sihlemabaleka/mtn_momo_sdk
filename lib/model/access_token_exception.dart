part of mtn_momo.api;

class AccessTokenException {
  /* An error code. */
  String error = null;

  AccessTokenException();

  @override
  String toString() {
    return 'AccessTokenException[error=$error, ]';
  }

  AccessTokenException.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    return {'error': error};
  }

  static List<AccessTokenException> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<AccessTokenException>()
        : json
            .map((value) => new AccessTokenException.fromJson(value))
            .toList();
  }

  static Map<String, AccessTokenException> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccessTokenException>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new AccessTokenException.fromJson(value));
    }
    return map;
  }
}
