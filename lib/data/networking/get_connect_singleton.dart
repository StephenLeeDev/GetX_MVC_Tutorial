import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:get_connect_logger/get_connect_logger.dart';

class GetConnectSingleton extends GetConnect {

  @override
  void onInit() {
    super.onInit();

    httpClient.baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
    httpClient.timeout = const Duration(seconds: 10);

    if (kDebugMode) {
      GetConnectLogger.instance.enableLogger(httpClient);
    }

  }
}