part of mtn_momo.api;

class TransferResult1 {
  /* Amount that will be debited from the payer account. */
  String amount = null;
/* ISO4217 Currency */
  String currency = null;
/* Financial transactionIdd from mobile money manager.<br> Used to connect to the specific financial transaction made in the account */
  String financialTransactionId = null;
/* External id is used as a reference to the transaction. External id is used for reconciliation. The external id will be included in transaction history report. <br>External id is not required to be unique. */
  String externalId = null;

  Party payee = null;
/* Message that will be written in the payer transaction history message field. */
  String payerMessage = null;
/* Message that will be written in the payee transaction history note field. */
  String payeeNote = null;

  String status = null;
  //enum statusEnum {  PENDING,  SUCCESSFUL,  FAILED,  };

  ErrorReason2 reason = null;

  TransferResult1();

  @override
  String toString() {
    return 'TransferResult1[amount=$amount, currency=$currency, financialTransactionId=$financialTransactionId, externalId=$externalId, payee=$payee, payerMessage=$payerMessage, payeeNote=$payeeNote, status=$status, reason=$reason, ]';
  }

  TransferResult1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    amount = json['amount'];
    currency = json['currency'];
    financialTransactionId = json['financialTransactionId'];
    externalId = json['externalId'];
    payee = new Party.fromJson(json['payee']);
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
      'payee': payee,
      'payerMessage': payerMessage,
      'payeeNote': payeeNote,
      'status': status,
      'reason': reason
     };
  }

  static List<TransferResult1> listFromJson(List<dynamic> json) {
    return json == null ? new List<TransferResult1>() : json.map((value) => new TransferResult1.fromJson(value)).toList();
  }

  static Map<String, TransferResult1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TransferResult1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TransferResult1.fromJson(value));
    }
    return map;
  }
}
