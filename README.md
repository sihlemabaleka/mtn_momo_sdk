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

Create user, create key and create token with each transaction

```dart
import 'package:mtn_momo/api.dart';

var api_instance = new MTNMoMoAPI();
var xTargetEnvironment = xTargetEnvironment_example; // String | The identifier of the EWP system where the transaction shall be processed. This parameter is used to route the request to the EWP system that will initiate the transaction.
var authorization = authorization_example; // String | Authorization header used for Basic authentication and oauth. Format of the header parameter follows the standard for Basic and Bearer. Oauth uses Bearer authentication type where the credential is the received access token.

try {
    var result = api_instance.getAccountBalance(xTargetEnvironment, authorization);
    print(result);
} catch (e) {
    print("Exception when calling MTNMoMoAPI->getV10AccountBalance: $e\n");
}
```

## Documentation for API Endpoints

All URIs are relative to *https://sandbox.momodeveloper.mtn.com*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*MTNMoMoAPI* | [**getAccountBalance**](doc//MTNMoMoAPI.md#getv10accountbalance) | **GET** /v1_0/account/balance | /v1_0/account/balance - GET
*MTNMoMoAPI* | [**getAccountActivityStatus**](doc//MTNMoMoAPI.md#getv10accountholderaccountholderidtypeaccountholderidactive) | **GET** /v1_0/accountholder/{accountHolderIdType}/{accountHolderId}/active | /v1_0/accountholder/{accountHolderIdType}/{accountHolderId}/active - GET
*MTNMoMoAPI* | [**getUser**](doc//MTNMoMoAPI.md#getv10apiuser) | **GET** /v1_0/apiuser/{X-Reference-Id} | /v1_0/apiuser/{X-Reference-Id} - GET
*MTNMoMoAPI* | [**createUser**](doc//MTNMoMoAPI.md#postv10apiuser) | **POST** /v1_0/apiuser | /apiuser - POST
*MTNMoMoAPI* | [**createUserAPIKey**](doc//MTNMoMoAPI.md#postv10apiuserapikey) | **POST** /v1_0/apiuser/{X-Reference-Id}/apikey | /v1_0/apiuser/{X-Reference-Id}/apikey - POST
*MTNMoMoAPI* | [**requestToPay**](doc//MTNMoMoAPI.md#requesttopaypost) | **POST** /v1_0/requesttopay | /requesttopay - POST
*MTNMoMoAPI* | [**getPaymentStatus**](doc//MTNMoMoAPI.md#requesttopayreferenceidget) | **GET** /v1_0/requesttopay/{referenceId} | /requesttopay/{referenceId} - GET
*MTNMoMoAPI* | [**createToken**](doc//MTNMoMoAPI.md#tokenpost) | **POST** /token/ | /token - POST
*MTNMoMoAPI* | [**requestTransfer**](doc//MTNMoMoAPI.md#transferpost) | **POST** /v1_0/transfer | /transfer - POST
*MTNMoMoAPI* | [**getTransactionStatus**](doc//MTNMoMoAPI.md#transferreferenceidget) | **GET** /v1_0/transfer/{referenceId} | /transfer/{referenceId} - GET

## Documentation For Models

 - [MoMoUser](doc//ApiUser.md)
 - [ApiUserKeyResult](doc//ApiUserKeyResult.md)
 - [ApiUserResult](doc//ApiUserResult.md)
 - [Balance](doc//Balance.md)
 - [BooleanResult](doc//BooleanResult.md)
 - [ErrorReason](doc//ErrorReason.md)
 - [Party](doc//Party.md)
 - [PaymentServerUrl](doc//PaymentServerUrl.md)
 - [PreApproval](doc//PreApproval.md)
 - [PreApprovalResult](doc//PreApprovalResult.md)
 - [RequestToPay](doc//RequestToPay.md)
 - [RequestToPayResult](doc//RequestToPayResult.md)
 - [TargetEnvironment](doc//TargetEnvironment.md)
 - [MoMoAccessToken](doc//TokenPost200ApplicationJsonResponse.md)
 - [TokenPost401ApplicationJsonResponse](doc//TokenPost401ApplicationJsonResponse.md)
 - [Transfer](doc//Transfer.md)
 - [TransferResult](doc//TransferResult.md)

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


