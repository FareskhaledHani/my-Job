import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';

Future<void> selectAndOpenFile(BuildContext context) async {
  try {
    // Select a file using file_picker
    final  result = await FilePicker.platform.pickFiles();

    if (result != null && result.files.isNotEmpty) {
      PlatformFile file = result.files.first;

      if (file.path != null) {
        // Get the temporary directory path
        Directory tempDir = await getTemporaryDirectory();
        String tempPath = tempDir.path;

        // Copy the selected file to the temporary directory
        File tempFile = File('$tempPath/${file.name}');
        await tempFile.writeAsBytes(file.bytes!);

        // Open the selected file using the default platform application
        await OpenFile.open(tempFile.path);
      } else {
        _showSnackBar(context, 'File path is null');
      }
    } else {
      _showSnackBar(context, 'No file selected');
    }
  } catch (e) {
    _showSnackBar(context, 'Error: $e');
  }
}

void _showSnackBar(BuildContext context, String message) {
  final snackBar = SnackBar(
    content: Text(message),
    duration: Duration(seconds: 3),
  );
  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}