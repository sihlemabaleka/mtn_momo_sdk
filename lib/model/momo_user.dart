part of mtn_momo.api;

class MoMoUser {
  /* The provider callback host */
  String providerCallbackHost = null;

  MoMoUser();

  @override
  String toString() {
    return 'MoMoUser[providerCallbackHost=$providerCallbackHost, ]';
  }

  MoMoUser.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    providerCallbackHost = json['providerCallbackHost'];
  }

  Map<String, dynamic> toJson() {
    return {'providerCallbackHost': providerCallbackHost};
  }

  static List<MoMoUser> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<MoMoUser>()
        : json.map((value) => new MoMoUser.fromJson(value)).toList();
  }

  static Map<String, MoMoUser> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MoMoUser>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new MoMoUser.fromJson(value));
    }
    return map;
  }
}
