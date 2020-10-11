part of mtn_momo.api;

class TokenPost200ApplicationJsonResponse {
  /* A JWT token which can be used to authrize against the other API end-points. The format of the token follows the JWT standard format (see jwt.io for an example). This is the token that should be sent in in the Authorization header when calling the other API end-points. */
  String accessToken = null;
/* The token type. */
  String tokenType = null;
/* The validity time in seconds of the token. */
  int expiresIn = null;

  TokenPost200ApplicationJsonResponse();

  @override
  String toString() {
    return 'TokenPost200ApplicationJsonResponse[accessToken=$accessToken, tokenType=$tokenType, expiresIn=$expiresIn, ]';
  }

  TokenPost200ApplicationJsonResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    accessToken = json['access_token'];
    tokenType = json['token_type'];
    expiresIn = json['expires_in'];
  }

  Map<String, dynamic> toJson() {
    return {
      'access_token': accessToken,
      'token_type': tokenType,
      'expires_in': expiresIn
     };
  }

  static List<TokenPost200ApplicationJsonResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<TokenPost200ApplicationJsonResponse>() : json.map((value) => new TokenPost200ApplicationJsonResponse.fromJson(value)).toList();
  }

  static Map<String, TokenPost200ApplicationJsonResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TokenPost200ApplicationJsonResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TokenPost200ApplicationJsonResponse.fromJson(value));
    }
    return map;
  }
}
