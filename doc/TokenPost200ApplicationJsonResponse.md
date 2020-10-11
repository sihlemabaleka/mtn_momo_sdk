# mtn_momo.model.TokenPost200ApplicationJsonResponse

## Load the model package
```dart
import 'package:mtn_momo/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**accessToken** | **String** | A JWT token which can be used to authrize against the other API end-points. The format of the token follows the JWT standard format (see jwt.io for an example). This is the token that should be sent in in the Authorization header when calling the other API end-points. | [optional] [default to null]
**tokenType** | **String** | The token type. | [optional] [default to null]
**expiresIn** | **int** | The validity time in seconds of the token. | [optional] [default to null]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

