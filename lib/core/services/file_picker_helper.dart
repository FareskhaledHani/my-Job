import 'dart:convert';

import 'package:file_picker/file_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FilePickerHelper {
  static late SharedPreferences _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
    final String _key = 'filesData';
  }

  Future<Map<String, dynamic>?> pickCVFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: [
        'pdf',
        'doc',
        'docx'
      ], // Add more file types if needed
    );

    if (result != null) {
      PlatformFile file = result.files.first;
      return {
        'name': file.name,
        'filePath': file.path,
        'size': file.size,
      };
    } else {
      // User canceled the picker
      return null;
    }
  }

  Future<String?> pickImageFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.image,
    );

    if (result != null) {
      PlatformFile file = result.files.first;
      return file.path;
    } else {
      // User canceled the picker
      return null;
    }
  }

  Future<void> saveFile(String fileName, String filePath, int fileSize) async {
    List<String> filesData = _prefs.getStringList('filesData') ?? [];

    // Encode the file data as a JSON string
    String encodedFileData = jsonEncode({
      'fileName': fileName,
      'filePath': filePath,
      'fileSize': fileSize,
      // 'idFile': idFileUpload,
    });

    // Add the encoded file data to the list
    filesData.add(encodedFileData);

    // Save the updated list to shared preferences
    await _prefs.setStringList('filesData', filesData);
  }

  // Function to retrieve file data (name, path, size) from shared preferences
  Future<List> getFiles() async {
    List<String> encodedFilesData = _prefs.getStringList('filesData') ?? [];

    // Decode each encoded file data into a map
    List files = encodedFilesData.map((data) => jsonDecode(data)).toList();

    return files;
  }

  Future<void> deleteFile(int index) async {
    final String _key = 'filesData';
    List<String> encodedFilesData = _prefs.getStringList(_key) ?? [];
    List files =
    encodedFilesData.map((data) => jsonDecode(data)).toList();

    // Check if the index is valid
    if (index >= 0 && index < files.length) {
      // Remove the file at the specified index
      files.removeAt(index);

      // Encode the updated list and save it back to SharedPreferences
      List<String> updatedEncodedFilesData =
      files.map((file) => jsonEncode(file)).toList();
      _prefs.setStringList(_key, updatedEncodedFilesData);
    }
  }
}