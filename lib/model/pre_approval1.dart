part of swagger.api;

class PreApproval1 {
  
  Party payer = null;
/* ISO4217 Currency */
  String payerCurrency = null;
/* The mesage that is shown to the approver. */
  String payerMessage = null;
/* The request validity time of the pre-approval */
  int validityTime = null;

  PreApproval1();

  @override
  String toString() {
    return 'PreApproval1[payer=$payer, payerCurrency=$payerCurrency, payerMessage=$payerMessage, validityTime=$validityTime, ]';
  }

  PreApproval1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    payer = new Party.fromJson(json['payer']);
    payerCurrency = json['payerCurrency'];
    payerMessage = json['payerMessage'];
    validityTime = json['validityTime'];
  }

  Map<String, dynamic> toJson() {
    return {
      'payer': payer,
      'payerCurrency': payerCurrency,
      'payerMessage': payerMessage,
      'validityTime': validityTime
     };
  }

  static List<PreApproval1> listFromJson(List<dynamic> json) {
    return json == null ? new List<PreApproval1>() : json.map((value) => new PreApproval1.fromJson(value)).toList();
  }

  static Map<String, PreApproval1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PreApproval1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PreApproval1.fromJson(value));
    }
    return map;
  }
}
