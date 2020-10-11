part of swagger.api;

class RequestToPayResult1 {
  /* Amount that will be debited from the payer account. */
  String amount = null;
/* ISO4217 Currency */
  String currency = null;
/* Financial transactionIdd from mobile money manager.<br> Used to connect to the specific financial transaction made in the account */
  String financialTransactionId = null;
/* External id provided in the creation of the requestToPay transaction. */
  String externalId = null;

  Party payer = null;
/* Message that will be written in the payer transaction history message field. */
  String payerMessage = null;
/* Message that will be written in the payee transaction history note field. */
  String payeeNote = null;

  String status = null;
  //enum statusEnum {  PENDING,  SUCCESSFUL,  FAILED,  };

  ErrorReason2 reason = null;

  RequestToPayResult1();

  @override
  String toString() {
    return 'RequestToPayResult1[amount=$amount, currency=$currency, financialTransactionId=$financialTransactionId, externalId=$externalId, payer=$payer, payerMessage=$payerMessage, payeeNote=$payeeNote, status=$status, reason=$reason, ]';
  }

  RequestToPayResult1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    amount = json['amount'];
    currency = json['currency'];
    financialTransactionId = json['financialTransactionId'];
    externalId = json['externalId'];
    payer = new Party.fromJson(json['payer']);
    payerMessage = json['payerMessage'];
    payeeNote = json['payeeNote'];
    status = json['status'];
    reason = new ErrorReason2.fromJson(json['reason']);
  }

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'currency': currency,
      'financialTransactionId': financialTransactionId,
      'externalId': externalId,
      'payer': payer,
      'payerMessage': payerMessage,
      'payeeNote': payeeNote,
      'status': status,
      'reason': reason
     };
  }

  static List<RequestToPayResult1> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestToPayResult1>() : json.map((value) => new RequestToPayResult1.fromJson(value)).toList();
  }

  static Map<String, RequestToPayResult1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RequestToPayResult1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RequestToPayResult1.fromJson(value));
    }
    return map;
  }
}
