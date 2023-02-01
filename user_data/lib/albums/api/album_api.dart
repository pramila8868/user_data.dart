import 'dart:convert';

import 'package:user_data/albums/module/module.dart';
import 'package:http/http.dart' as http;
import 'package:user_data/test.dart';

String baseUrl = "https://jsonplaceholder.typicode.com/albums";

List<Album> albumList = [];
Future<List<Album>> fetchAlbum() async {
  final response = await http.get(Uri.parse(baseUrl));
  var datas = json.decode(response.body);
  if (response.statusCode == 200) {
    for (Map<String, dynamic> album in datas) {
      albumList.add(Album.fromJson(album));
    }
    return albumList;
    print(albumList);
  } else {
    throw Exception("error");
  }
}
