part of mtn_momo.api;

class ApiUser {
  /* The provider callback host */
  String providerCallbackHost = null;

  ApiUser();

  @override
  String toString() {
    return 'ApiUser[providerCallbackHost=$providerCallbackHost, ]';
  }

  ApiUser.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    providerCallbackHost = json['providerCallbackHost'];
  }

  Map<String, dynamic> toJson() {
    return {
      'providerCallbackHost': providerCallbackHost
     };
  }

  static List<ApiUser> listFromJson(List<dynamic> json) {
    return json == null ? new List<ApiUser>() : json.map((value) => new ApiUser.fromJson(value)).toList();
  }

  static Map<String, ApiUser> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ApiUser>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ApiUser.fromJson(value));
    }
    return map;
  }
}
