import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:daccess_assignment/api/api_response.dart';
import 'package:daccess_assignment/common/common_url.dart';
import 'package:daccess_assignment/model/post_data_model.dart';
import 'package:http/http.dart' as http;

http.Client client = http.Client();

Future<ApiResponse> postDailyActivity(Map<String, dynamic> payload) async {
  print(payload);
  ApiResponse apiResponse = ApiResponse(
    title: "Post Daily Activity Error",
    message: "Something Went Wrong",
    success: false,
  );

  try {
    var apiUrl = CommonApi.postDailyActivity;

    http.Response response = await http.post(Uri.parse(apiUrl), body: payload);

    print("asdasdasdasdasd");
    print("${response.body.toString()}");
    print(apiUrl);
    Map<String, dynamic> decodedResponse =
        jsonDecode(utf8.decode(response.bodyBytes)) as Map<String, dynamic>;

    if (decodedResponse["statusCode"] == 200) {
      if (decodedResponse["status"].toString().toLowerCase() == "true") {
        apiResponse = ApiResponse(
            title: "Data Posted Successfully",
            message: decodedResponse["message"] ?? "Data Posted Successfully",
            success: true);
      } else {
        apiResponse = ApiResponse(
            title: "Data Error",
            message: decodedResponse["error"] ?? "Error while getting data",
            success: false);
      }
      apiResponse = ApiResponse(
        title: "Daily Activity Data Fetched",
        message: "Data Fetched Successfully",
        success: true,
      );
    } else {
      // String errMsg = "${jsonData["error"]} ${jsonData["message"]}";

      // apiResponse = ApiResponse(
      //   title: "Daily Activity Error",
      //   message: errMsg,
      //   success: false,
      // );
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
