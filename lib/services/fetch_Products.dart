import "dart:convert";

import "package:furniture_ui/models/Product.dart";
import "package:http/http.dart" as http;

//Fetch our Products from the API

Future<List<Product>> fetchProducts() async {
  const String apiUrl =
      "https://5f210aa9daa42f001666535e.mockapi.io/api/products";

  final response = await http.get(Uri.parse(apiUrl));

  if (response.statusCode == 200) {
    //Its a OK return so parse the Json
    List<Product> products = (json.decode(response.body) as List)
        .map((data) => Product.fromJson(data))
        .toList();
    return products;
  } else {
    throw Exception("Failed to Load");
  }
}
