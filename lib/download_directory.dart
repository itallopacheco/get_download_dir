import 'package:path_provider/path_provider.dart';

class DownloadDirectory {
  static Future<String?> getDownloadDirectory() async {
    final downloadsDirectory = await getDownloadsDirectory();
    return downloadsDirectory?.path;
  }
}
