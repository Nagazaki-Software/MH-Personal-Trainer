import '/backend/schema/structs/index.dart';

class CreateInscricaoCloudFunctionCallResponse {
  CreateInscricaoCloudFunctionCallResponse({
    this.errorCode,
    this.succeeded,
    this.jsonBody,
  });
  String? errorCode;
  bool? succeeded;
  dynamic jsonBody;
}
