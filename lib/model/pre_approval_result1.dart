part of swagger.api;

class PreApprovalResult1 {
  
  Party payer = null;
/* ISO4217 Currency */
  String payerCurrency = null;
/* The mesage that is shown to the approver. */
  String payerMessage = null;
/* The request validity time of the pre-approval */
  int validityTime = null;

  String status = null;
  //enum statusEnum {  PENDING,  SUCCESSFUL,  FAILED,  };

  ErrorReason2 reason = null;

  PreApprovalResult1();

  @override
  String toString() {
    return 'PreApprovalResult1[payer=$payer, payerCurrency=$payerCurrency, payerMessage=$payerMessage, validityTime=$validityTime, status=$status, reason=$reason, ]';
  }

  PreApprovalResult1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    payer = new Party.fromJson(json['payer']);
    payerCurrency = json['payerCurrency'];
    payerMessage = json['payerMessage'];
    validityTime = json['validityTime'];
    status = json['status'];
    reason = new ErrorReason2.fromJson(json['reason']);
  }

  Map<String, dynamic> toJson() {
    return {
      'payer': payer,
      'payerCurrency': payerCurrency,
      'payerMessage': payerMessage,
      'validityTime': validityTime,
      'status': status,
      'reason': reason
     };
  }

  static List<PreApprovalResult1> listFromJson(List<dynamic> json) {
    return json == null ? new List<PreApprovalResult1>() : json.map((value) => new PreApprovalResult1.fromJson(value)).toList();
  }

  static Map<String, PreApprovalResult1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PreApprovalResult1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PreApprovalResult1.fromJson(value));
    }
    return map;
  }
}
