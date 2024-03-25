import 'package:path_provider/path_provider.dart';

class DownloadDirectory {
  static Future<String?> getDownloadDirectory() async {
    final downloadsDirectory = await getDownloadsDirectory();
    return downloadsDirectory?.path;
  }
}

//TESTE
void main() async {
  // Obtém o diretório de downloads
  String? downloadDirectory = await DownloadDirectory.getDownloadDirectory();

  // Verifica se o diretório de downloads foi encontrado
  if (downloadDirectory != null) {
    print('O diretório de downloads é: $downloadDirectory');
  } else {
    print('Não foi possível encontrar o diretório de downloads.');
  }
}
