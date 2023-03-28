
import 'dart:html';

import 'package:dio/dio.dart';
import 'package:fileio_api_app/model/file_response.dart';
import 'package:flutter/material.dart';

import 'FilePostRequst.dart';
import 'package:path_provider/path_provider.dart';


class FileIoApiService extends ChangeNotifier {
  // List<Files>? _files;
  //
  // List<Files>? get files => _files;
  final Dio _dio = Dio();

  List<Nodes>? data;

  FileIoApiService() {
    _dio.options.headers['accept'] = 'application/json';
    _dio.options.headers['Authorization'] =
    'Bearer WVRUFUZ.V0MD78Z-E2TMHZQ-PBDSVX3-6ZS88F6';
  }

//   Future<FileGetRequest> getFiles() async {
//
//     final response = await _dio.get('https://file.io/');
//
//     print(response.data);
//     return FileGetRequest.fromJson(response.data);
//
//
// }
  Future<void> getFiles() async {
    final response = await _dio.get('https://file.io/');

    FileResponse  fileGetRequest;
    print(response.data);

    if(response != null){
      fileGetRequest = FileResponse.fromJson(response.data);
        data = fileGetRequest.nodes;
        print("data: $data");
        notifyListeners();
    }

    // List<dynamic> jsonList = response.data;
    // data = jsonList.map((item) => Files.fromJson(item)).toList();
    // notifyListeners();



    // return fileGetRequest;
  }



  Future<FilePostRequst> uploadFile(String filePath) async {
    final formData = FormData.fromMap({
      'file': await MultipartFile.fromFile(filePath, filename: filePath),
      'expires': '',
      'maxDownloads': '1',
      'autoDelete': 'true',
    });

    final response = await _dio.post('https://file.io/', data: formData);
    return FilePostRequst.fromJson(response.data);
  }

  Future<void> downloadFile(String key) async {
    final response = await _dio.get('https://www.file.io/download/$key');
  }
  // Future<void> downloadFile(String key) async {
  //   final response = await Dio().get('https://www.file.io/download/$key', options: Options(responseType: ResponseType.bytes));
  //
  //   final directory = await getApplicationDocumentsDirectory();
  //   final filePath = '${directory.path}/$key'; // Set the file path to the app's documents directory
  //
  //   final file = File(filePath);
  //   await file.writeAsBytes(response.data);
  //
  //   print('File saved to $filePath');
  // }
}

