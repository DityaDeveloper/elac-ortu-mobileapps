
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:akucerdasortu/app/config/app_environment.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

part '_api_client_payload.dart';

class ApiClient {
  final PayloadData payloadData = PayloadData();
  String baseUrl = AppEnvironment.instance.baseUrl;
  String apiPath = AppEnvironment.instance.path;

  // ignore: unused_local_variable
  final headers = {
    "X-RapidAPI-Key": "",
    "X-RapidAPI-Host": "",
    "Bearer": "",
    "X-CSRF-Token": "",
  };

 

  Future<Map?> getList(String pathUrl) async {
    try {
      final fullUrl = "$baseUrl$apiPath$pathUrl";
      debugPrint('clog full url : $fullUrl');

      final response = await http.Client()
          .get(Uri.parse(fullUrl))
          .timeout(const Duration(seconds: 10), onTimeout: () {
        throw Get.snackbar(
            "Request Timeout", "Connection time out, please try again");
      });
      return payloadData.catchPayloadData(response);
    } finally {
      http.Client().close();
    }
  }
}
