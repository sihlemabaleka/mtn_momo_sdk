part of swagger.api;

class PreApproval {
  
  Party payer = null;
/* ISO4217 Currency */
  String payerCurrency = null;
/* The mesage that is shown to the approver. */
  String payerMessage = null;
/* The request validity time of the pre-approval */
  int validityTime = null;

  PreApproval();

  @override
  String toString() {
    return 'PreApproval[payer=$payer, payerCurrency=$payerCurrency, payerMessage=$payerMessage, validityTime=$validityTime, ]';
  }

  PreApproval.fromJson(Map<String, dynamic> json) {
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

  static List<PreApproval> listFromJson(List<dynamic> json) {
    return json == null ? new List<PreApproval>() : json.map((value) => new PreApproval.fromJson(value)).toList();
  }

  static Map<String, PreApproval> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PreApproval>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PreApproval.fromJson(value));
    }
    return map;
  }
}
