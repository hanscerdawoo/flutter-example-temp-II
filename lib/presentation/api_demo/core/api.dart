import 'package:app_dev/presentation/api_demo/models/info_characters.dart';
import 'package:dio/dio.dart';

class Api {
  final dio = Dio();
  Future<List<InfoCharacters>> getCharacters() async {
    var response = await dio.get('https://thronesapi.com/api/v2/Characters');
    var responseList = response.data as List;
    return responseList.map((item) => InfoCharacters.fromJson(item)).toList();
  }
}
