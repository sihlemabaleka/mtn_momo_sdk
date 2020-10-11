part of mtn_momo.api;

class MTNMoMoAPI {
  final MTNMoMo apiClient;

  MTNMoMoAPI([MTNMoMo apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// /v1_0/account/balance - GET
  ///
  /// Get the balance of the account.
  Future<Balance> getAccountBalance(String xTargetEnvironment,
      {String authorization}) async {
    Object postBody = null;

    // verify required params are set
    if (xTargetEnvironment == null) {
      throw new ApiException(400, "Missing required param: xTargetEnvironment");
    }

    // create path and map variables
    String path = "/v1_0/account/balance".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;
    headerParams["X-Target-Environment"] = xTargetEnvironment;

    List<String> contentTypes = [];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'Balance') as Balance;
    } else {
      return null;
    }
  }

  /// /v1_0/accountholder/{accountHolderIdType}/{accountHolderId}/active - GET
  ///
  /// Operation is used  to check if an account holder is registered and active in the system.
  Future getAccountActivityStatus(String accountHolderId,
      String accountHolderIdType, String xTargetEnvironment,
      {String authorization}) async {
    Object postBody = null;

    // verify required params are set
    if (accountHolderId == null) {
      throw new ApiException(400, "Missing required param: accountHolderId");
    }
    if (accountHolderIdType == null) {
      throw new ApiException(
          400, "Missing required param: accountHolderIdType");
    }
    if (xTargetEnvironment == null) {
      throw new ApiException(400, "Missing required param: xTargetEnvironment");
    }

    // create path and map variables
    String path =
        "/v1_0/accountholder/{accountHolderIdType}/{accountHolderId}/active"
            .replaceAll("{format}", "json")
            .replaceAll(
                "{" + "accountHolderId" + "}", accountHolderId.toString())
            .replaceAll("{" + "accountHolderIdType" + "}",
                accountHolderIdType.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;
    headerParams["X-Target-Environment"] = xTargetEnvironment;

    List<String> contentTypes = [];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return;
    } else {
      return;
    }
  }

  /// /v1_0/apiuser/{X-Reference-Id} - GET
  ///
  /// Used to get API user information.
  Future getUser(String xReferenceId) async {
    Object postBody = null;

    // verify required params are set
    if (xReferenceId == null) {
      throw new ApiException(400, "Missing required param: xReferenceId");
    }

    // create path and map variables
    String path = "/v1_0/apiuser/{X-Reference-Id}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "X-Reference-Id" + "}", xReferenceId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return;
    } else {
      return;
    }
  }

  /// /apiuser - POST
  ///
  /// Used to create an API user in the sandbox target environment.
  Future createUser(String xReferenceId, {ApiUser body}) async {
    Object postBody = body;

    // verify required params are set
    if (xReferenceId == null) {
      throw new ApiException(400, "Missing required param: xReferenceId");
    }

    // create path and map variables
    String path = "/v1_0/apiuser".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["X-Reference-Id"] = xReferenceId;

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return;
    } else {
      return;
    }
  }

  /// /v1_0/apiuser/{X-Reference-Id}/apikey - POST
  ///
  /// Used to create an API key for an API user in the sandbox target environment.
  Future<ApiUserKeyResult> createUserAPIKey(String xReferenceId) async {
    Object postBody = null;

    // verify required params are set
    if (xReferenceId == null) {
      throw new ApiException(400, "Missing required param: xReferenceId");
    }

    // create path and map variables
    String path = "/v1_0/apiuser/{X-Reference-Id}/apikey"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "X-Reference-Id" + "}", xReferenceId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};

    List<String> contentTypes = [];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'ApiUserKeyResult')
          as ApiUserKeyResult;
    } else {
      return null;
    }
  }

  /// /requesttopay - POST
  ///
  /// This operation is used to request a payment from a consumer (Payer). The payer will be asked to authorize the payment. The transaction will be executed once the payer has authorized the payment. The requesttopay will be in status PENDING until the transaction is authorized or declined by the payer or it is timed out by the system.   Status of the transaction can be validated by using the GET /requesttopay/\\&lt;resourceId\\&gt;
  Future requestToPay(String xReferenceId, String xTargetEnvironment,
      {RequestToPay body, String authorization, String xCallbackUrl}) async {
    Object postBody = body;

    // verify required params are set
    if (xReferenceId == null) {
      throw new ApiException(400, "Missing required param: xReferenceId");
    }
    if (xTargetEnvironment == null) {
      throw new ApiException(400, "Missing required param: xTargetEnvironment");
    }

    // create path and map variables
    String path = "/v1_0/requesttopay".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;
    headerParams["X-Callback-Url"] = xCallbackUrl;
    headerParams["X-Reference-Id"] = xReferenceId;
    headerParams["X-Target-Environment"] = xTargetEnvironment;

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return;
    } else {
      return;
    }
  }

  /// /requesttopay/{referenceId} - GET
  ///
  /// This operation is used to get the status of a request to pay. X-Reference-Id that was passed in the post is used as reference to the request.
  Future<RequestToPayResult> getPaymentStatus(
      {String referenceId,
      String xTargetEnvironment,
      String authorization}) async {
    Object postBody = null;

    // verify required params are set
    if (referenceId == null) {
      throw new ApiException(400, "Missing required param: referenceId");
    }
    if (xTargetEnvironment == null) {
      throw new ApiException(400, "Missing required param: xTargetEnvironment");
    }

    // create path and map variables
    String path = "/v1_0/requesttopay/{referenceId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "referenceId" + "}", referenceId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;
    headerParams["X-Target-Environment"] = xTargetEnvironment;

    List<String> contentTypes = [];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'RequestToPayResult')
          as RequestToPayResult;
    } else {
      return null;
    }
  }

  /// /token - POST
  ///
  /// This operation is used to create an access token which can then be used to authorize and authenticate towards the other end-points of the API.
  Future<MoMoAccessToken> createToken({String authorization}) async {
    Object postBody = null;

    // verify required params are set
    if (authorization == null) {
      throw new ApiException(400, "Missing required param: authorization");
    }

    // create path and map variables
    String path = "/token/".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;

    List<String> contentTypes = [];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(
              response.body, 'TokenPost200ApplicationJsonResponse')
          as MoMoAccessToken;
    } else {
      return null;
    }
  }

  /// /transfer - POST
  ///
  /// Transfer operation is used to transfer an amount from the own account to a payee account.&lt;br&gt; Status of the transaction can validated by using the GET /transfer/\\{referenceId\\}
  Future transferPOST(String xReferenceId, String xTargetEnvironment,
      {Transfer body, String authorization, String xCallbackUrl}) async {
    Object postBody = body;

    // verify required params are set
    if (xReferenceId == null) {
      throw new ApiException(400, "Missing required param: xReferenceId");
    }
    if (xTargetEnvironment == null) {
      throw new ApiException(400, "Missing required param: xTargetEnvironment");
    }

    // create path and map variables
    String path = "/v1_0/transfer".replaceAll("{format}", "json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;
    headerParams["X-Callback-Url"] = xCallbackUrl;
    headerParams["X-Reference-Id"] = xReferenceId;
    headerParams["X-Target-Environment"] = xTargetEnvironment;

    List<String> contentTypes = ["application/json"];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'POST', queryParams,
        postBody, headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return;
    } else {
      return;
    }
  }

  /// /transfer/{referenceId} - GET
  ///
  /// This operation is used to get the status of a transfer. X-Reference-Id that was passed in the post is used as reference to the request.
  Future<TransferResult> transferReferenceIdGET(
      String referenceId, String xTargetEnvironment,
      {String authorization}) async {
    Object postBody = null;

    // verify required params are set
    if (referenceId == null) {
      throw new ApiException(400, "Missing required param: referenceId");
    }
    if (xTargetEnvironment == null) {
      throw new ApiException(400, "Missing required param: xTargetEnvironment");
    }

    // create path and map variables
    String path = "/v1_0/transfer/{referenceId}"
        .replaceAll("{format}", "json")
        .replaceAll("{" + "referenceId" + "}", referenceId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    headerParams["Authorization"] = authorization;
    headerParams["X-Target-Environment"] = xTargetEnvironment;

    List<String> contentTypes = [];

    String contentType =
        contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    if (contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (hasFields) postBody = mp;
    } else {}

    var response = await apiClient.invokeAPI(path, 'GET', queryParams, postBody,
        headerParams, formParams, contentType, authNames);

    if (response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if (response.body != null) {
      return apiClient.deserialize(response.body, 'TransferResult1')
          as TransferResult;
    } else {
      return null;
    }
  }
}
