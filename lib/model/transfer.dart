part of mtn_momo.api;

class Transfer {
  /* Amount that will be debited from the payer account. */
  String amount = null;
/* ISO4217 Currency */
  String currency = null;
/* External id is used as a reference to the transaction. External id is used for reconciliation. The external id will be included in transaction history report. <br>External id is not required to be unique. */
  String externalId = null;

  Party payee = null;
/* Message that will be written in the payer transaction history message field. */
  String payerMessage = null;
/* Message that will be written in the payee transaction history note field. */
  String payeeNote = null;

  Transfer();

  @override
  String toString() {
    return 'Transfer[amount=$amount, currency=$currency, externalId=$externalId, payee=$payee, payerMessage=$payerMessage, payeeNote=$payeeNote, ]';
  }

  Transfer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    amount = json['amount'];
    currency = json['currency'];
    externalId = json['externalId'];
    payee = new Party.fromJson(json['payee']);
    payerMessage = json['payerMessage'];
    payeeNote = json['payeeNote'];
  }

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'currency': currency,
      'externalId': externalId,
      'payee': payee,
      'payerMessage': payerMessage,
      'payeeNote': payeeNote
     };
  }

  static List<Transfer> listFromJson(List<dynamic> json) {
    return json == null ? new List<Transfer>() : json.map((value) => new Transfer.fromJson(value)).toList();
  }

  static Map<String, Transfer> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Transfer>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Transfer.fromJson(value));
    }
    return map;
  }
}
