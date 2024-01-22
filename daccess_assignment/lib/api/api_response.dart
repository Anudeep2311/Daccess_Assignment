class ApiResponse {
  String title = "";
  String message = "";
  bool success = false;
  dynamic response;
  dynamic response2;

  ApiResponse({
    required this.title,
    required this.message,
    required this.success,
    this.response,
    this.response2,
  });

  String getTitle() => title;
  String getMessage() => message;
  bool isSuccess() => success;

  bool getSuccess() => success;
  dynamic getResponse() => response;
  dynamic getResponse2() => response2;
}
