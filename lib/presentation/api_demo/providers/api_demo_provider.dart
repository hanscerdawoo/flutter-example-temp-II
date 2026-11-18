import 'package:app_dev/presentation/api_demo/core/api.dart';
import 'package:app_dev/presentation/api_demo/models/info_characters.dart';
import 'package:flutter/material.dart';

class ApiDemoProvider with ChangeNotifier {
  bool _isLoading = false;
  bool get isLoading => _isLoading;
  void setLoading(bool value) {
    _isLoading = value;
    notifyListeners();
  }

  //llamado de la api
  List<InfoCharacters> _characters = [];
  List<InfoCharacters> get characters => _characters;
  Future<void> loadCharacters() async {
    setLoading(true);
    var api = Api();
    _characters = await api.getCharacters();
    setLoading(false);
  }
}
