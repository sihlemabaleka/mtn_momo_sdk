part of swagger.api;

class Party {
  
  String partyIdType = null;
  //enum partyIdTypeEnum {  MSISDN,  EMAIL,  PARTY_CODE,  };

  String partyId = null;

  Party();

  @override
  String toString() {
    return 'Party[partyIdType=$partyIdType, partyId=$partyId, ]';
  }

  Party.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    partyIdType = json['partyIdType'];
    partyId = json['partyId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'partyIdType': partyIdType,
      'partyId': partyId
     };
  }

  static List<Party> listFromJson(List<dynamic> json) {
    return json == null ? new List<Party>() : json.map((value) => new Party.fromJson(value)).toList();
  }

  static Map<String, Party> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Party>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Party.fromJson(value));
    }
    return map;
  }
}
