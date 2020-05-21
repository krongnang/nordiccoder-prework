import 'dart:io';

import 'data/implement/news_repo_impl.dart';
import 'data/repo/NewsRepository.dart';

var url = 'https://vnexpress.net';

Future<void> main(List<String> arguments) async {
  NewsRepository newsRepository = NewsRepositoryImpl();
  var newsLink = await newsRepository.getAllLinks(url);
  newsLink.forEach((element) async {
    print(element);
    await _write(element);
  });
}
