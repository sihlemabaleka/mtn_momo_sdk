part of mtn_momo.api;

class Balance {
  /* The available balance of the account */
  String availableBalance = null;
/* ISO4217 Currency */
  String currency = null;

  Balance();

  @override
  String toString() {
    return 'Balance[availableBalance=$availableBalance, currency=$currency, ]';
  }

  Balance.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    availableBalance = json['availableBalance'];
    currency = json['currency'];
  }

  Map<String, dynamic> toJson() {
    return {
      'availableBalance': availableBalance,
      'currency': currency
     };
  }

  static List<Balance> listFromJson(List<dynamic> json) {
    return json == null ? new List<Balance>() : json.map((value) => new Balance.fromJson(value)).toList();
  }

  static Map<String, Balance> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Balance>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Balance.fromJson(value));
    }
    return map;
  }
}
