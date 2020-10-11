part of mtn_momo.api;

class ErrorReason2 {
  
  String code = null;
  //enum codeEnum {  PAYEE_NOT_FOUND,  PAYER_NOT_FOUND,  NOT_ALLOWED,  NOT_ALLOWED_TARGET_ENVIRONMENT,  INVALID_CALLBACK_URL_HOST,  INVALID_CURRENCY,  SERVICE_UNAVAILABLE,  INTERNAL_PROCESSING_ERROR,  NOT_ENOUGH_FUNDS,  PAYER_LIMIT_REACHED,  PAYEE_NOT_ALLOWED_TO_RECEIVE,  PAYMENT_NOT_APPROVED,  RESOURCE_NOT_FOUND,  APPROVAL_REJECTED,  EXPIRED,  TRANSACTION_CANCELED,  RESOURCE_ALREADY_EXIST,  };

  String message = null;

  ErrorReason2();

  @override
  String toString() {
    return 'ErrorReason2[code=$code, message=$message, ]';
  }

  ErrorReason2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    code = json['code'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    return {
      'code': code,
      'message': message
     };
  }

  static List<ErrorReason2> listFromJson(List<dynamic> json) {
    return json == null ? new List<ErrorReason2>() : json.map((value) => new ErrorReason2.fromJson(value)).toList();
  }

  static Map<String, ErrorReason2> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ErrorReason2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ErrorReason2.fromJson(value));
    }
    return map;
  }
}
