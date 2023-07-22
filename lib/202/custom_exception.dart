class FileDownloadException implements Exception {
  @override
  String toString() {
    return 'Download has failed';
  }
}