# swagger.model.Transfer

## Load the model package
```dart
import 'package:swagger/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**amount** | **String** | Amount that will be debited from the payer account. | [optional] [default to null]
**currency** | **String** | ISO4217 Currency | [optional] [default to null]
**externalId** | **String** | External id is used as a reference to the transaction. External id is used for reconciliation. The external id will be included in transaction history report. &lt;br&gt;External id is not required to be unique. | [optional] [default to null]
**payee** | [**Party**](Party.md) |  | [optional] [default to null]
**payerMessage** | **String** | Message that will be written in the payer transaction history message field. | [optional] [default to null]
**payeeNote** | **String** | Message that will be written in the payee transaction history note field. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

