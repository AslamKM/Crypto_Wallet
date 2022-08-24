import 'dart:convert';
import 'package:crypto_wallet/models/coin.dart';
import 'package:http/http.dart' as http;

class CryptoApi {
  static String baseURL = 'https://coinranking1.p.rapidapi.com/';

  static const Map<String, String> headers = {
    'X-RapidAPI-Key': 'b5cc3c499bmsh9af2f4ee0f726c3p18926cjsnbca8575feaa2',
    'X-RapidAPI-Host': 'coinranking1.p.rapidapi.com'
  };

  static Future<List<Coin>> getCoins({required int limit}) async {
    List<Coin> coinList = [];

    var url = Uri.parse("$baseURL/coins?limit=$limit");
    final response = await http.get(url, headers: headers);
    if (response.statusCode == 200) {
      var coins = jsonDecode(response.body)['data']['coins'];
      for (var coin in coins) {
        coinList.add(Coin.fromJson(coin));
      }
    }
    //print(coinList);
    return coinList;
  }
}
