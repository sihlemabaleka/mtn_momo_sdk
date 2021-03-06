part of mtn_momo.api;

class RequestToPayResult {
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

  ErrorReason reason = null;

  RequestToPayResult();

  @override
  String toString() {
    return 'RequestToPayResult[amount=$amount, currency=$currency, financialTransactionId=$financialTransactionId, externalId=$externalId, payer=$payer, payerMessage=$payerMessage, payeeNote=$payeeNote, status=$status, reason=$reason, ]';
  }

  RequestToPayResult.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    amount = json['amount'];
    currency = json['currency'];
    financialTransactionId = json['financialTransactionId'];
    externalId = json['externalId'];
    payer = new Party.fromJson(json['payer']);
    payerMessage = json['payerMessage'];
    payeeNote = json['payeeNote'];
    status = json['status'];
    reason = new ErrorReason.fromJson(json['reason']);
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

  static List<RequestToPayResult> listFromJson(List<dynamic> json) {
    return json == null
        ? new List<RequestToPayResult>()
        : json.map((value) => new RequestToPayResult.fromJson(value)).toList();
  }

  static Map<String, RequestToPayResult> mapFromJson(
      Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RequestToPayResult>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) =>
          map[key] = new RequestToPayResult.fromJson(value));
    }
    return map;
  }
}
