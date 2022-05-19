import 'package:http/http.dart' as http;

class ClientConfig {
  final String apiUrl;
  final bool debug;
  final http.Client httpClient;

  ClientConfig({
    this.apiUrl = 'http://0.0.0.0:8000/',
    this.debug = false,
    httpClient,
  }) : httpClient = httpClient ?? http.Client();
}
