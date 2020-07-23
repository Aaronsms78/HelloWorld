import 'package:path_provider/path_provider.dart';

Future<String> get localPath async {
  final directory = await getApplicationDocumentsDirectory();
  return directory.path;
}

Future<String> get tempPath async {
  final directory = await getTemporaryDirectory();
  return directory.path;
}