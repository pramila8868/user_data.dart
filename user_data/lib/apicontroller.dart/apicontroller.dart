import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class Controller extends GetxController {
  Future<void> loadData() async {
    var response = await http.get(Uri.parse("https://webhook.site/d24f9761-dfba-4759-bcda-f42f3dd539b7"));
    print(response.body);
  }
}
