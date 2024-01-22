import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:daccess_assignment/api/api_response.dart';
import 'package:daccess_assignment/common/common_url.dart';
import 'package:daccess_assignment/model/form_model.dart';
import 'package:http/http.dart' as http;

http.Client client = http.Client();

Future<ApiResponse> fetchDailyActivity() async {
  ApiResponse apiResponse = ApiResponse(
    title: "Getting Daily Activity Error",
    message: "Something Went Wrong",
    success: false,
  );

  try {
    var apiUrl = CommonApi.getDailyActivity;

    http.Response response = await http.get(Uri.parse(apiUrl));

    print("${response.body.toString()}");

    // print("${response.body}");

    Map<String, dynamic> jsonData = jsonDecode(response.body);

    if (response.statusCode == 200) {
      List<FormModel> formList = [];
      for (var formList in jsonData["data"]) {
        formList.add(
          FormModel.fromJson(jsonData),
        );
      }
      apiResponse = ApiResponse(
        title: "Daily Activity Data Fetched",
        message: "Data Fetched Successfully",
        response: formList,
        success: true,
      );
    } else {
      String errMsg = "${jsonData["error"]} ${jsonData["message"]}";

      apiResponse = ApiResponse(
        title: "Daily Activity Error",
        message: errMsg,
        success: false,
      );
    }
  } on SocketException catch (_) {
    apiResponse.message =
        'Error whilst getting the data: no internet connection.';
  } on HttpException catch (_) {
    apiResponse.message =
        'Error whilst getting the data: requested data could not be found.';
  } on FormatException catch (_) {
    apiResponse.message = 'Error whilst getting the data: bad format.';
  } on TimeoutException catch (_) {
    apiResponse.message =
        'Error whilst getting the data: connection timed out.';
  } catch (e) {
    apiResponse.message = "Something Went Wrong $e";
    log("Exception $e");
  }

  return apiResponse;
}
