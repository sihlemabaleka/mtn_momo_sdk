# mtn_momo.api.DefaultApi

## Load the API package
```dart
import 'package:mtn_momo/api.dart';
```

All URIs are relative to *https://sandbox.momodeveloper.mtn.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getV10AccountBalance**](DefaultApi.md#getV10AccountBalance) | **GET** /v1_0/account/balance | /v1_0/account/balance - GET
[**getV10AccountholderAccountholderidtypeAccountholderidActive**](DefaultApi.md#getV10AccountholderAccountholderidtypeAccountholderidActive) | **GET** /v1_0/accountholder/{accountHolderIdType}/{accountHolderId}/active | /v1_0/accountholder/{accountHolderIdType}/{accountHolderId}/active - GET
[**getV10Apiuser**](DefaultApi.md#getV10Apiuser) | **GET** /v1_0/apiuser/{X-Reference-Id} | /v1_0/apiuser/{X-Reference-Id} - GET
[**postV10Apiuser**](DefaultApi.md#postV10Apiuser) | **POST** /v1_0/apiuser | /apiuser - POST
[**postV10ApiuserApikey**](DefaultApi.md#postV10ApiuserApikey) | **POST** /v1_0/apiuser/{X-Reference-Id}/apikey | /v1_0/apiuser/{X-Reference-Id}/apikey - POST
[**requesttopayPOST**](DefaultApi.md#requesttopayPOST) | **POST** /v1_0/requesttopay | /requesttopay - POST
[**requesttopayReferenceIdGET**](DefaultApi.md#requesttopayReferenceIdGET) | **GET** /v1_0/requesttopay/{referenceId} | /requesttopay/{referenceId} - GET
[**tokenPOST**](DefaultApi.md#tokenPOST) | **POST** /token/ | /token - POST
[**transferPOST**](DefaultApi.md#transferPOST) | **POST** /v1_0/transfer | /transfer - POST
[**transferReferenceIdGET**](DefaultApi.md#transferReferenceIdGET) | **GET** /v1_0/transfer/{referenceId} | /transfer/{referenceId} - GET

# **getV10AccountBalance**
> Balance getV10AccountBalance(xTargetEnvironment, authorization)

/v1_0/account/balance - GET

Get the balance of the account.

### Example
```dart
import 'package:mtn_momo/api.dart';

var api_instance = new DefaultApi();
var xTargetEnvironment = xTargetEnvironment_example; // String | The identifier of the EWP system where the transaction shall be processed. This parameter is used to route the request to the EWP system that will initiate the transaction.
var authorization = authorization_example; // String | Authorization header used for Basic authentication and oauth. Format of the header parameter follows the standard for Basic and Bearer. Oauth uses Bearer authentication type where the credential is the received access token.

try {
    var result = api_instance.getV10AccountBalance(xTargetEnvironment, authorization);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->getV10AccountBalance: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xTargetEnvironment** | **String**| The identifier of the EWP system where the transaction shall be processed. This parameter is used to route the request to the EWP system that will initiate the transaction. | 
 **authorization** | **String**| Authorization header used for Basic authentication and oauth. Format of the header parameter follows the standard for Basic and Bearer. Oauth uses Bearer authentication type where the credential is the received access token. | [optional] 

### Return type

[**Balance**](Balance.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, Incorrect target environment

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getV10AccountholderAccountholderidtypeAccountholderidActive**
> getV10AccountholderAccountholderidtypeAccountholderidActive(accountHolderId, accountHolderIdType, xTargetEnvironment, authorization)

/v1_0/accountholder/{accountHolderIdType}/{accountHolderId}/active - GET

Operation is used  to check if an account holder is registered and active in the system.

### Example
```dart
import 'package:mtn_momo/api.dart';

var api_instance = new DefaultApi();
var accountHolderId = accountHolderId_example; // String | The party number. Validated according to the party ID type (case Sensitive). <br> msisdn - Mobile Number validated according to ITU-T E.164. Validated with IsMSISDN<br> email - Validated to be a valid e-mail format. Validated with IsEmail<br> party_code - UUID of the party. Validated with IsUuid
var accountHolderIdType = accountHolderIdType_example; // String | Specifies the type of the party ID. Allowed values [msisdn, email, party_code].  <br> accountHolderId should explicitly be in small letters.
var xTargetEnvironment = xTargetEnvironment_example; // String | The identifier of the EWP system where the transaction shall be processed. This parameter is used to route the request to the EWP system that will initiate the transaction.
var authorization = authorization_example; // String | Authorization header used for Basic authentication and oauth. Format of the header parameter follows the standard for Basic and Bearer. Oauth uses Bearer authentication type where the credential is the received access token.

try {
    api_instance.getV10AccountholderAccountholderidtypeAccountholderidActive(accountHolderId, accountHolderIdType, xTargetEnvironment, authorization);
} catch (e) {
    print("Exception when calling DefaultApi->getV10AccountholderAccountholderidtypeAccountholderidActive: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accountHolderId** | **String**| The party number. Validated according to the party ID type (case Sensitive). &lt;br&gt; msisdn - Mobile Number validated according to ITU-T E.164. Validated with IsMSISDN&lt;br&gt; email - Validated to be a valid e-mail format. Validated with IsEmail&lt;br&gt; party_code - UUID of the party. Validated with IsUuid | 
 **accountHolderIdType** | **String**| Specifies the type of the party ID. Allowed values [msisdn, email, party_code].  &lt;br&gt; accountHolderId should explicitly be in small letters. | 
 **xTargetEnvironment** | **String**| The identifier of the EWP system where the transaction shall be processed. This parameter is used to route the request to the EWP system that will initiate the transaction. | 
 **authorization** | **String**| Authorization header used for Basic authentication and oauth. Format of the header parameter follows the standard for Basic and Bearer. Oauth uses Bearer authentication type where the credential is the received access token. | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Incorrect target environment

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getV10Apiuser**
> getV10Apiuser(xReferenceId)

/v1_0/apiuser/{X-Reference-Id} - GET

Used to get API user information.

### Example
```dart
import 'package:mtn_momo/api.dart';

var api_instance = new DefaultApi();
var xReferenceId = xReferenceId_example; // String | Format - UUID. Recource ID for the API user to be created. UUID version 4 is required.

try {
    api_instance.getV10Apiuser(xReferenceId);
} catch (e) {
    print("Exception when calling DefaultApi->getV10Apiuser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xReferenceId** | **String**| Format - UUID. Recource ID for the API user to be created. UUID version 4 is required. | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Requested resource was not found

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postV10Apiuser**
> postV10Apiuser(xReferenceId, body)

/apiuser - POST

Used to create an API user in the sandbox target environment.

### Example
```dart
import 'package:mtn_momo/api.dart';

var api_instance = new DefaultApi();
var xReferenceId = xReferenceId_example; // String | Format - UUID. Recource ID for the API user to be created. UUID version 4 is required.
var body = new ApiUser(); // ApiUser | 

try {
    api_instance.postV10Apiuser(xReferenceId, body);
} catch (e) {
    print("Exception when calling DefaultApi->postV10Apiuser: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xReferenceId** | **String**| Format - UUID. Recource ID for the API user to be created. UUID version 4 is required. | 
 **body** | [**ApiUser**](ApiUser.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, ReferenceId already in use

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postV10ApiuserApikey**
> ApiUserKeyResult postV10ApiuserApikey(xReferenceId)

/v1_0/apiuser/{X-Reference-Id}/apikey - POST

Used to create an API key for an API user in the sandbox target environment.

### Example
```dart
import 'package:mtn_momo/api.dart';

var api_instance = new DefaultApi();
var xReferenceId = xReferenceId_example; // String | Format - UUID. Recource ID for the API user to be created. UUID version 4 is required.

try {
    var result = api_instance.postV10ApiuserApikey(xReferenceId);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->postV10ApiuserApikey: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xReferenceId** | **String**| Format - UUID. Recource ID for the API user to be created. UUID version 4 is required. | 

### Return type

[**ApiUserKeyResult**](ApiUserKeyResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json, Requested resource was not found

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requesttopayPOST**
> requesttopayPOST(xReferenceId, xTargetEnvironment, body, authorization, xCallbackUrl)

/requesttopay - POST

This operation is used to request a payment from a consumer (Payer). The payer will be asked to authorize the payment. The transaction will be executed once the payer has authorized the payment. The requesttopay will be in status PENDING until the transaction is authorized or declined by the payer or it is timed out by the system.   Status of the transaction can be validated by using the GET /requesttopay/\\<resourceId\\>

### Example
```dart
import 'package:mtn_momo/api.dart';

var api_instance = new DefaultApi();
var xReferenceId = xReferenceId_example; // String | Format - UUID. Recource ID of the created request to pay transaction. This ID is used, for example, validating the status of the request. ‘Universal Unique ID’ for the transaction generated using UUID version 4.
var xTargetEnvironment = xTargetEnvironment_example; // String | The identifier of the EWP system where the transaction shall be processed. This parameter is used to route the request to the EWP system that will initiate the transaction.
var body = new RequestToPay(); // RequestToPay | 
var authorization = authorization_example; // String | Authorization header used for Basic authentication and oauth. Format of the header parameter follows the standard for Basic and Bearer. Oauth uses Bearer authentication type where the credential is the received access token.
var xCallbackUrl = xCallbackUrl_example; // String | URL to the server where the callback should be sent.

try {
    api_instance.requesttopayPOST(xReferenceId, xTargetEnvironment, body, authorization, xCallbackUrl);
} catch (e) {
    print("Exception when calling DefaultApi->requesttopayPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xReferenceId** | **String**| Format - UUID. Recource ID of the created request to pay transaction. This ID is used, for example, validating the status of the request. ‘Universal Unique ID’ for the transaction generated using UUID version 4. | 
 **xTargetEnvironment** | **String**| The identifier of the EWP system where the transaction shall be processed. This parameter is used to route the request to the EWP system that will initiate the transaction. | 
 **body** | [**RequestToPay**](RequestToPay.md)|  | [optional] 
 **authorization** | **String**| Authorization header used for Basic authentication and oauth. Format of the header parameter follows the standard for Basic and Bearer. Oauth uses Bearer authentication type where the credential is the received access token. | [optional] 
 **xCallbackUrl** | **String**| URL to the server where the callback should be sent. | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, ReferenceId already in use, Unspecified internal error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requesttopayReferenceIdGET**
> RequestToPayResult requesttopayReferenceIdGET(referenceId, xTargetEnvironment, authorization)

/requesttopay/{referenceId} - GET

This operation is used to get the status of a request to pay. X-Reference-Id that was passed in the post is used as reference to the request.

### Example
```dart
import 'package:mtn_momo/api.dart';

var api_instance = new DefaultApi();
var referenceId = referenceId_example; // String | UUID of transaction to get result. Reference id  used when creating the request to pay.
var xTargetEnvironment = xTargetEnvironment_example; // String | The identifier of the EWP system where the transaction shall be processed. This parameter is used to route the request to the EWP system that will initiate the transaction.
var authorization = authorization_example; // String | Authorization header used for Basic authentication and oauth. Format of the header parameter follows the standard for Basic and Bearer. Oauth uses Bearer authentication type where the credential is the received access token.

try {
    var result = api_instance.requesttopayReferenceIdGET(referenceId, xTargetEnvironment, authorization);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->requesttopayReferenceIdGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **referenceId** | **String**| UUID of transaction to get result. Reference id  used when creating the request to pay. | 
 **xTargetEnvironment** | **String**| The identifier of the EWP system where the transaction shall be processed. This parameter is used to route the request to the EWP system that will initiate the transaction. | 
 **authorization** | **String**| Authorization header used for Basic authentication and oauth. Format of the header parameter follows the standard for Basic and Bearer. Oauth uses Bearer authentication type where the credential is the received access token. | [optional] 

### Return type

[**RequestToPayResult**](RequestToPayResult.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Successful request to pay, Payer not found, application/json, Request to pay not found, Unspecified internal error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **tokenPOST**
> TokenPost200ApplicationJsonResponse tokenPOST(authorization)

/token - POST

This operation is used to create an access token which can then be used to authorize and authenticate towards the other end-points of the API.

### Example
```dart
import 'package:mtn_momo/api.dart';

var api_instance = new DefaultApi();
var authorization = authorization_example; // String | Basic authentication header containing API user ID and API key. Should be sent in as B64 encoded.

try {
    var result = api_instance.tokenPOST(authorization);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->tokenPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authorization** | **String**| Basic authentication header containing API user ID and API key. Should be sent in as B64 encoded. | 

### Return type

[**TokenPost200ApplicationJsonResponse**](TokenPost200ApplicationJsonResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transferPOST**
> transferPOST(xReferenceId, xTargetEnvironment, body, authorization, xCallbackUrl)

/transfer - POST

Transfer operation is used to transfer an amount from the own account to a payee account.<br> Status of the transaction can validated by using the GET /transfer/\\{referenceId\\}

### Example
```dart
import 'package:mtn_momo/api.dart';

var api_instance = new DefaultApi();
var xReferenceId = xReferenceId_example; // String | Format - UUID. Recource ID of the created request to pay transaction. This ID is used, for example validating the status of the request. ‘Universal Unique ID’ for the transaction generated using UUID version 4.
var xTargetEnvironment = xTargetEnvironment_example; // String | The identifier of the EWP system where the transaction shall be processed. This parameter is used to route the request to the EWP system that will initiate the transaction.
var body = new Transfer2(); // Transfer2 | 
var authorization = authorization_example; // String | Authorization header used for Basic authentication and oauth. Format of the header parameter follows the standard for Basic and Bearer. Oauth uses Bearer authentication type where the credential is the received access token.
var xCallbackUrl = xCallbackUrl_example; // String | URL to the server where the callback should be sent.

try {
    api_instance.transferPOST(xReferenceId, xTargetEnvironment, body, authorization, xCallbackUrl);
} catch (e) {
    print("Exception when calling DefaultApi->transferPOST: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xReferenceId** | **String**| Format - UUID. Recource ID of the created request to pay transaction. This ID is used, for example validating the status of the request. ‘Universal Unique ID’ for the transaction generated using UUID version 4. | 
 **xTargetEnvironment** | **String**| The identifier of the EWP system where the transaction shall be processed. This parameter is used to route the request to the EWP system that will initiate the transaction. | 
 **body** | [**Transfer2**](Transfer2.md)|  | [optional] 
 **authorization** | **String**| Authorization header used for Basic authentication and oauth. Format of the header parameter follows the standard for Basic and Bearer. Oauth uses Bearer authentication type where the credential is the received access token. | [optional] 
 **xCallbackUrl** | **String**| URL to the server where the callback should be sent. | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json, ReferenceId already in use, Incorrect currency for target environment

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **transferReferenceIdGET**
> TransferResult1 transferReferenceIdGET(referenceId, xTargetEnvironment, authorization)

/transfer/{referenceId} - GET

This operation is used to get the status of a transfer. X-Reference-Id that was passed in the post is used as reference to the request.

### Example
```dart
import 'package:mtn_momo/api.dart';

var api_instance = new DefaultApi();
var referenceId = referenceId_example; // String | UUID of transaction to get result. Reference id  used when creating the request to pay.
var xTargetEnvironment = xTargetEnvironment_example; // String | The identifier of the EWP system where the transaction shall be processed. This parameter is used to route the request to the EWP system that will initiate the transaction.
var authorization = authorization_example; // String | Authorization header used for Basic authentication and oauth. Format of the header parameter follows the standard for Basic and Bearer. Oauth uses Bearer authentication type where the credential is the received access token.

try {
    var result = api_instance.transferReferenceIdGET(referenceId, xTargetEnvironment, authorization);
    print(result);
} catch (e) {
    print("Exception when calling DefaultApi->transferReferenceIdGET: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **referenceId** | **String**| UUID of transaction to get result. Reference id  used when creating the request to pay. | 
 **xTargetEnvironment** | **String**| The identifier of the EWP system where the transaction shall be processed. This parameter is used to route the request to the EWP system that will initiate the transaction. | 
 **authorization** | **String**| Authorization header used for Basic authentication and oauth. Format of the header parameter follows the standard for Basic and Bearer. Oauth uses Bearer authentication type where the credential is the received access token. | [optional] 

### Return type

[**TransferResult1**](TransferResult1.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Successful transfer, Payer limit breached, API user insufficient balance, application/json, Transfer not found, Unspecified internal error

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

