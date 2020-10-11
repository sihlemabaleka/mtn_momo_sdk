part of mtn_momo.api;

class PreApprovalResult {
  
  Party payer = null;
/* ISO4217 Currency */
  String payerCurrency = null;
/* The mesage that is shown to the approver. */
  String payerMessage = null;
/* The request validity time of the pre-approval */
  int validityTime = null;

  String status = null;
  //enum statusEnum {  PENDING,  SUCCESSFUL,  FAILED,  };

  ErrorReason reason = null;

  PreApprovalResult();

  @override
  String toString() {
    return 'PreApprovalResult[payer=$payer, payerCurrency=$payerCurrency, payerMessage=$payerMessage, validityTime=$validityTime, status=$status, reason=$reason, ]';
  }

  PreApprovalResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    payer = new Party.fromJson(json['payer']);
    payerCurrency = json['payerCurrency'];
    payerMessage = json['payerMessage'];
    validityTime = json['validityTime'];
    status = json['status'];
    reason = new ErrorReason.fromJson(json['reason']);
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

  static List<PreApprovalResult> listFromJson(List<dynamic> json) {
    return json == null ? new List<PreApprovalResult>() : json.map((value) => new PreApprovalResult.fromJson(value)).toList();
  }

  static Map<String, PreApprovalResult> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PreApprovalResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PreApprovalResult.fromJson(value));
    }
    return map;
  }
}
