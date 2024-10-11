import '../../core/constants/apikyes/apikeys.dart';

class ApiBaseUrl {
  final GetPixaBayApiKeys _getApiKey = GetPixaBayApiKeys();

  static const _baseUrl = "https://pixabay.com/api//?key=";

  String apiBaseUrl() => '$_baseUrl${_getApiKey.getApiKeys()}';
}
