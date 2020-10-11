part of swagger.api;

class PreApproval2 {
  
  Party payer = null;
/* ISO4217 Currency */
  String payerCurrency = null;
/* The mesage that is shown to the approver. */
  String payerMessage = null;
/* The request validity time of the pre-approval */
  int validityTime = null;

  PreApproval2();

  @override
  String toString() {
    return 'PreApproval2[payer=$payer, payerCurrency=$payerCurrency, payerMessage=$payerMessage, validityTime=$validityTime, ]';
  }

  PreApproval2.fromJson(Map<String, dynamic> json) {
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

  static List<PreApproval2> listFromJson(List<dynamic> json) {
    return json == null ? new List<PreApproval2>() : json.map((value) => new PreApproval2.fromJson(value)).toList();
  }

  static Map<String, PreApproval2> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PreApproval2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PreApproval2.fromJson(value));
    }
    return map;
  }
}
