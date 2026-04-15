import 'package:flutter/material.dart';
import 'package:shawn_app/service/fake_api.dart';

class FakeApiController extends ChangeNotifier {
  final serviceApi = FakeApi();

  bool isLoading = false;
  String error = "";
  List<String> dados = [];

  void getData() async {
    isLoading = true;
    error = "";
    notifyListeners();

    try {
      final response = await serviceApi.fechApi();
      dados = response;
      notifyListeners();
    } catch (e) {
      error = e.toString();
      notifyListeners();
    } finally {
      isLoading = false;
      notifyListeners();
    }
  }
}
