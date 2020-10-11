part of swagger.api;

class RequestToPay1 {
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

  RequestToPay1();

  @override
  String toString() {
    return 'RequestToPay1[amount=$amount, currency=$currency, externalId=$externalId, payer=$payer, payerMessage=$payerMessage, payeeNote=$payeeNote, ]';
  }

  RequestToPay1.fromJson(Map<String, dynamic> json) {
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

  static List<RequestToPay1> listFromJson(List<dynamic> json) {
    return json == null ? new List<RequestToPay1>() : json.map((value) => new RequestToPay1.fromJson(value)).toList();
  }

  static Map<String, RequestToPay1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RequestToPay1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RequestToPay1.fromJson(value));
    }
    return map;
  }
}
