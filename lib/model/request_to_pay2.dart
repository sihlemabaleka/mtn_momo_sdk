part of swagger.api;

class RequestToPay2 {
  /* Amount that will be debited from the payer account. */
  String amount = null;
/* ISO4217 Currency */
  String currency = null;
/* External id is used as a reference to the transaction. External id is used for reconciliation. The external id will be included in transaction history report. <br>External id is not required to be unique. */
  String externalId = null;

  Party payer = null;
/* Message that will be written in the payer transaction history message field. */
  String payerMessage = null;
/* Message that will be written in the payee transaction history note field. */
  String payeeNote = null;

  RequestToPay2();

  @override
  String toString() {
    return 'RequestToPay2[amount=$amount, currency=$currency, externalId=$externalId, payer=$payer, payerMessage=$payerMessage, payeeNote=$payeeNote, ]';
  }

  RequestToPay2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    amount = json['amount'];
    currency = json['currency'];
    externalId = json['externalId'];
    payer = new Party.fromJson(json['payer']);
    payerMessage = json['payerMessage'];
    payeeNote = json['payeeNote'];
  }

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'currency': currency,
      'externalId': externalId,
      'payer': payer,
      'payerMessage': payerMessage,
      'payeeNote': payeeNote
     };
  }

  static List<RequestToPay2> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestToPay2>() : json.map((value) => new RequestToPay2.fromJson(value)).toList();
  }

  static Map<String, RequestToPay2> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RequestToPay2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RequestToPay2.fromJson(value));
    }
    return map;
  }
}
