import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

import '../repo/NewsRepository.dart';

class NewsRepositoryImpl implements NewsRepository {
  @override
  Future<List<String>> getAllLinks(String url) async {
    var res = await http.Client().get(Uri.parse(url));
    var result = List<String>();

    var document = parse(res.body);
    var x = document.querySelectorAll(".title-news");
    x.forEach((element) {
      result.add(element.querySelector('a').attributes['href']);
    });
    return result;
  }

  @override
  void getAndSaveNewsInfoToMemory(String url) {
    // TODO: implement getAndSaveNewsInfoToMemory
  }

  @override
  void getUrlFromNewsDetail(String url) {
    // TODO: implement getUrlFromNewsDetail
  }
}
