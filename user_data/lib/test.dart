import 'package:user_data/mobile/model/mobile_model.dart';

Map data = {
  'products': [
    {
      "name": {"shortName": "Mobile", "fullName": " Redmi Note 9 Mobile"}
    },
    {
      "name": {"shortName": "Laptop", "fullName": " Redmi Note 9 Mobile"}
    },
    {
      "name": {"shortName": "Printer", "fullName": " Redmi Note 9 Mobile"}
    }
  ]
};

void main() {
  Map newMap = {};

  //for(i=0; )
  print(data['products'][1]['name']['shortName']);
  // for('products'=0; i<=3; i++){
  print("products");
  data.forEach((key, value) => {print("key is ${key} and value is ${value[1]["name"]}")});
  // {
  // for (Map i in data) {}
}
  // for (Map i in data) {
  //   // if (newMap[i['name'].toString()] == null) newMap[i['name'].toString()] = [];
  //   // newMap[i['name'].toString()].add(i);
  //   print(i);

  // }

