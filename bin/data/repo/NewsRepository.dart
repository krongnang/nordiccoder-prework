abstract class NewsRepository {
  Future<List<String>> getAllLinks(String url);

  void getUrlFromNewsDetail(String url);

  void getAndSaveNewsInfoToMemory(String url);
}
