import 'package:http/http.dart' as http;
class MyService{
  static Future apifetch()async{
    var request = http.Request('GET', Uri.parse('https://www.themealdb.com/api/json/v1/1/search.php?s'));


    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      var res = await response.stream.bytesToString();
      return res;
    }
    else {
      print(response.reasonPhrase);
      return null;
    }

  }
}