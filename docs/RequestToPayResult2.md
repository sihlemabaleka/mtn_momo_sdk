# swagger.model.RequestToPayResult2

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **String** | Amount that will be debited from the payer account. | [optional] [default to null]
**currency** | **String** | ISO4217 Currency | [optional] [default to null]
**financialTransactionId** | **String** | Financial transactionIdd from mobile money manager.&lt;br&gt; Used to connect to the specific financial transaction made in the account | [optional] [default to null]
**externalId** | **String** | External id provided in the creation of the requestToPay transaction. | [optional] [default to null]
**payer** | [**Party**](Party.md) |  | [optional] [default to null]
**payerMessage** | **String** | Message that will be written in the payer transaction history message field. | [optional] [default to null]
**payeeNote** | **String** | Message that will be written in the payee transaction history note field. | [optional] [default to null]
**status** | **String** |  | [optional] [default to null]
**reason** | [**ErrorReason3**](ErrorReason3.md) |  | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

