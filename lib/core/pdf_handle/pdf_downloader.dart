import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';

class PdfDownloader {
  static Future<void> openPdfUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'لا يمكن فتح الرابط: $url';
    }
  }

  static Future<void> downloadPdf(
      String url, String fileName, BuildContext context) async {
    var status = await Permission.storage.request();

    if (status.isGranted) {
      try {
        final snackBar = ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Row(
              children: [
                CircularProgressIndicator(),
                SizedBox(width: 10),
                Text('جاري تحميل $fileName...'),
              ],
            ),
            duration: Duration(minutes: 1),
          ),
        );

        Directory? directory;
        if (Platform.isAndroid) {
          directory = Directory('/storage/emulated/0/Download');
          if (!await directory.exists()) {
            directory = await getExternalStorageDirectory();
          }
        } else {
          directory = await getApplicationDocumentsDirectory();
        }

        if (directory == null) {
          throw 'لا يمكن تحديد مجلد التنزيلات';
        }

        final filePath = '${directory.path}/$fileName';
        await Dio().download(
          url,
          filePath,
          onReceiveProgress: (received, total) {
            if (total != -1) {}
          },
        );

        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('تم تحميل الملف بنجاح'),
            backgroundColor: Colors.green,
          ),
        );

        final fileUri = Uri.file(filePath);
        await launchUrl(fileUri, mode: LaunchMode.externalApplication);
      } catch (e) {
        ScaffoldMessenger.of(context).hideCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('حدث خطأ أثناء التحميل: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('لم يتم منح إذن التخزين'),
          backgroundColor: Colors.red,
        ),
      );
    }
  }
}
