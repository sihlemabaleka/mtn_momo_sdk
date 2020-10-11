# mtn_momo
Partner Gateway sandbox provisioning API document



## Requirements

Dart 2.0.0 or later OR Flutter 2.7.0 or later

## Installation & Usage

### Github
If this Dart package is published to Github, please include the following in pubspec.yaml
```
name: mtn_momo
version: 1.0.0
description: MTN MoMo SDK API client
dependencies:
  mtn_momo:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
      version: 'any'
```

### Local
To use the package in your local drive, please include the following in pubspec.yaml
```
dependencies:
  mtn_momo:
    path: /path/to/mtn_momo
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:mtn_momo/api.dart';

var api_instance = new MTNMoMoAPI();
var xTargetEnvironment = xTargetEnvironment_example; // String | The identifier of the EWP system where the transaction shall be processed. This parameter is used to route the request to the EWP system that will initiate the transaction.
var authorization = authorization_example; // String | Authorization header used for Basic authentication and oauth. Format of the header parameter follows the standard for Basic and Bearer. Oauth uses Bearer authentication type where the credential is the received access token.

try {
    var result = api_instance.getV10AccountBalance(xTargetEnvironment, authorization);
    print(result);
} catch (e) {
    print("Exception when calling MTNMoMoAPI->getV10AccountBalance: $e\n");
}
```

## Documentation for API Endpoints

All URIs are relative to *https://sandbox.momodeveloper.mtn.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*MTNMoMoAPI* | [**getV10AccountBalance**](docs//MTNMoMoAPI.md#getv10accountbalance) | **GET** /v1_0/account/balance | /v1_0/account/balance - GET
*MTNMoMoAPI* | [**getV10AccountholderAccountholderidtypeAccountholderidActive**](docs//MTNMoMoAPI.md#getv10accountholderaccountholderidtypeaccountholderidactive) | **GET** /v1_0/accountholder/{accountHolderIdType}/{accountHolderId}/active | /v1_0/accountholder/{accountHolderIdType}/{accountHolderId}/active - GET
*MTNMoMoAPI* | [**getV10Apiuser**](docs//MTNMoMoAPI.md#getv10apiuser) | **GET** /v1_0/apiuser/{X-Reference-Id} | /v1_0/apiuser/{X-Reference-Id} - GET
*MTNMoMoAPI* | [**postV10Apiuser**](docs//MTNMoMoAPI.md#postv10apiuser) | **POST** /v1_0/apiuser | /apiuser - POST
*MTNMoMoAPI* | [**postV10ApiuserApikey**](docs//MTNMoMoAPI.md#postv10apiuserapikey) | **POST** /v1_0/apiuser/{X-Reference-Id}/apikey | /v1_0/apiuser/{X-Reference-Id}/apikey - POST
*MTNMoMoAPI* | [**requesttopayPOST**](docs//MTNMoMoAPI.md#requesttopaypost) | **POST** /v1_0/requesttopay | /requesttopay - POST
*MTNMoMoAPI* | [**requesttopayReferenceIdGET**](docs//MTNMoMoAPI.md#requesttopayreferenceidget) | **GET** /v1_0/requesttopay/{referenceId} | /requesttopay/{referenceId} - GET
*MTNMoMoAPI* | [**tokenPOST**](docs//MTNMoMoAPI.md#tokenpost) | **POST** /token/ | /token - POST
*MTNMoMoAPI* | [**transferPOST**](docs//MTNMoMoAPI.md#transferpost) | **POST** /v1_0/transfer | /transfer - POST
*MTNMoMoAPI* | [**transferReferenceIdGET**](docs//MTNMoMoAPI.md#transferreferenceidget) | **GET** /v1_0/transfer/{referenceId} | /transfer/{referenceId} - GET

## Documentation For Models

 - [ApiUser](docs//ApiUser.md)
 - [ApiUserKeyResult](docs//ApiUserKeyResult.md)
 - [ApiUserResult](docs//ApiUserResult.md)
 - [Balance](docs//Balance.md)
 - [BooleanResult](docs//BooleanResult.md)
 - [ErrorReason](docs//ErrorReason.md)
 - [ErrorReason1](docs//ErrorReason1.md)
 - [ErrorReason2](docs//ErrorReason2.md)
 - [ErrorReason3](docs//ErrorReason3.md)
 - [Party](docs//Party.md)
 - [PaymentServerUrl](docs//PaymentServerUrl.md)
 - [PreApproval](docs//PreApproval.md)
 - [PreApproval1](docs//PreApproval1.md)
 - [PreApproval2](docs//PreApproval2.md)
 - [PreApprovalResult](docs//PreApprovalResult.md)
 - [PreApprovalResult1](docs//PreApprovalResult1.md)
 - [PreApprovalResult2](docs//PreApprovalResult2.md)
 - [RequestToPay](docs//RequestToPay.md)
 - [RequestToPay1](docs//RequestToPay1.md)
 - [RequestToPay2](docs//RequestToPay2.md)
 - [RequestToPayResult](docs//RequestToPayResult.md)
 - [RequestToPayResult1](docs//RequestToPayResult1.md)
 - [RequestToPayResult2](docs//RequestToPayResult2.md)
 - [TargetEnvironment](docs//TargetEnvironment.md)
 - [TokenPost200ApplicationJsonResponse](docs//TokenPost200ApplicationJsonResponse.md)
 - [TokenPost401ApplicationJsonResponse](docs//TokenPost401ApplicationJsonResponse.md)
 - [Transfer](docs//Transfer.md)
 - [Transfer1](docs//Transfer1.md)
 - [Transfer2](docs//Transfer2.md)
 - [TransferResult](docs//TransferResult.md)
 - [TransferResult1](docs//TransferResult1.md)
 - [TransferResult2](docs//TransferResult2.md)

## Documentation For Authorization


## apiKeyHeader

- **Type**: API key
- **API key parameter name**: Ocp-Apim-Subscription-Key
- **Location**: HTTP header

## apiKeyQuery

- **Type**: API key
- **API key parameter name**: subscription-key
- **Location**: URL query string


## Author


