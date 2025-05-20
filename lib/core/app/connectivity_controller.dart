import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityController {
  ConnectivityController._();
  static final ConnectivityController inistanc = ConnectivityController._();
  ValueNotifier<bool> isConnected = ValueNotifier(true);
  Future<void> init() async {
    final result = await Connectivity().checkConnectivity();
    isInternetConnect(result);
    Connectivity().onConnectivityChanged.listen(isInternetConnect);
  }

  bool isInternetConnect(ConnectivityResult? result) {
    if (result == ConnectivityResult.none) {
      isConnected.value = false;
      return false;
    } else if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      isConnected.value = true;
      return true;
    }
    return false;
  }
}
