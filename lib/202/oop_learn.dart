import 'package:flutter_tutorial/202/custom_exception.dart';
import 'package:url_launcher/url_launcher.dart';


abstract  class IFileDownload {
  bool? downloadItem(FileItem? fileItem);
  void toShare(String path) async {
    !await launchUrl(path as Uri);
  }
}


class FileDownload extends IFileDownload with ShareMixin{
  bool? downloadItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDownloadException();
    print('a');

    return true;
  }

}

class SMSDownload implements IFileDownload {
  bool? downloadItem(FileItem? fileItem) {
    if (fileItem == null) throw FileDownloadException();
    print('a');

    return true;
  } 
    
  @override
  void toShare(String path) async {
    await launchUrl('sms:$path' as Uri);
  }

  void smsShare() {}  
}

class HakoDownload extends FileDownload with ShareMixin {
  @override
  bool? downloadItem(FileItem? fileItem) {
    throw UnimplementedError();
  }
}

class FileItem {
  final String name;
  final String file;

  FileItem(this.name, this.file);
}




mixin ShareMixin on IFileDownload {
  void toShowFile () {}
}