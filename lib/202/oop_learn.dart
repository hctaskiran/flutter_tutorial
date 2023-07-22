import 'package:flutter_tutorial/202/custom_exception.dart';

class FileDownload {
  bool? downloadItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDownloadException();
    print('a');

    return true;
  }
}

class FileItem {
  final String name;
  final String file;

  FileItem(this.name, this.file);
}