import 'package:test/test.dart';

import '../lib/api.dart';

/// tests for DefaultApi
void main() {
  var instance = new MTNMoMoAPI();

  group('tests for DefaultApi', () {
    // /v1_0/account/balance - GET
    //
    // Get the balance of the account.
    //
    //Future<Balance> getV10AccountBalance(String xTargetEnvironment, { String authorization }) async
    test('test getV10AccountBalance', () async {
      // TODO
    });

    // /v1_0/accountholder/{accountHolderIdType}/{accountHolderId}/active - GET
    //
    // Operation is used  to check if an account holder is registered and active in the system.
    //
    //Future getV10AccountholderAccountholderidtypeAccountholderidActive(String accountHolderId, String accountHolderIdType, String xTargetEnvironment, { String authorization }) async
    test('test getV10AccountholderAccountholderidtypeAccountholderidActive',
        () async {
      // TODO
    });

    // /v1_0/apiuser/{X-Reference-Id} - GET
    //
    // Used to get API user information.
    //
    //Future getV10Apiuser(String xReferenceId) async
    test('test getV10Apiuser', () async {
      // TODO
    });

    // /apiuser - POST
    //
    // Used to create an API user in the sandbox target environment.
    //
    //Future postV10Apiuser(String xReferenceId, { ApiUser body }) async
    test('test postV10Apiuser', () async {
      // TODO
    });

    // /v1_0/apiuser/{X-Reference-Id}/apikey - POST
    //
    // Used to create an API key for an API user in the sandbox target environment.
    //
    //Future<ApiUserKeyResult> postV10ApiuserApikey(String xReferenceId) async
    test('test postV10ApiuserApikey', () async {
      // TODO
    });

    // /requesttopay - POST
    //
    // This operation is used to request a payment from a consumer (Payer). The payer will be asked to authorize the payment. The transaction will be executed once the payer has authorized the payment. The requesttopay will be in status PENDING until the transaction is authorized or declined by the payer or it is timed out by the system.   Status of the transaction can be validated by using the GET /requesttopay/\\<resourceId\\>
    //
    //Future requesttopayPOST(String xReferenceId, String xTargetEnvironment, { RequestToPay body, String authorization, String xCallbackUrl }) async
    test('test requesttopayPOST', () async {
      // TODO
    });

    // /requesttopay/{referenceId} - GET
    //
    // This operation is used to get the status of a request to pay. X-Reference-Id that was passed in the post is used as reference to the request.
    //
    //Future<RequestToPayResult> requesttopayReferenceIdGET(String referenceId, String xTargetEnvironment, { String authorization }) async
    test('test requesttopayReferenceIdGET', () async {
      // TODO
    });

    // /token - POST
    //
    // This operation is used to create an access token which can then be used to authorize and authenticate towards the other end-points of the API.
    //
    //Future<TokenPost200ApplicationJsonResponse> tokenPOST(String authorization) async
    test('test tokenPOST', () async {
      // TODO
    });

    // /transfer - POST
    //
    // Transfer operation is used to transfer an amount from the own account to a payee account.<br> Status of the transaction can validated by using the GET /transfer/\\{referenceId\\}
    //
    //Future transferPOST(String xReferenceId, String xTargetEnvironment, { Transfer2 body, String authorization, String xCallbackUrl }) async
    test('test transferPOST', () async {
      // TODO
    });

    // /transfer/{referenceId} - GET
    //
    // This operation is used to get the status of a transfer. X-Reference-Id that was passed in the post is used as reference to the request.
    //
    //Future<TransferResult1> transferReferenceIdGET(String referenceId, String xTargetEnvironment, { String authorization }) async
    test('test transferReferenceIdGET', () async {
      // TODO
    });
  });
}
