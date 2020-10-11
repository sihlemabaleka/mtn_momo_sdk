part of mtn_momo.api;

class TokenPost401ApplicationJsonResponse {
  /* An error code. */
  String error = null;

  TokenPost401ApplicationJsonResponse();

  @override
  String toString() {
    return 'TokenPost401ApplicationJsonResponse[error=$error, ]';
  }

  TokenPost401ApplicationJsonResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    error = json['error'];
  }

  Map<String, dynamic> toJson() {
    return {
      'error': error
     };
  }

  static List<TokenPost401ApplicationJsonResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<TokenPost401ApplicationJsonResponse>() : json.map((value) => new TokenPost401ApplicationJsonResponse.fromJson(value)).toList();
  }

  static Map<String, TokenPost401ApplicationJsonResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TokenPost401ApplicationJsonResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TokenPost401ApplicationJsonResponse.fromJson(value));
    }
    return map;
  }
}
