
import 'package:file_picker/file_picker.dart';
import 'package:fileio_api_app/model/FileIoApiService.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(
      ChangeNotifierProvider(
        create: (context) => FileIoApiService(),//Provider
        child: MyApp(),
      ),
  );
  }

      class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FileScreen(),
    );
  }
}



class FileScreen extends StatefulWidget {

  @override
  _FileScreenState createState() => _FileScreenState();
}

class _FileScreenState extends State<FileScreen> {
  final GlobalKey _scaffoldKey = GlobalKey();


  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      Provider.of<FileIoApiService>(_scaffoldKey.currentContext!,
          listen: false)
          .getFiles();
    });
  }
  // @override
  // void initState() {
  //   super.initState();
  //   Provider.of<FileIoApiService>(_scaffoldKey.currentContext!, listen: false)
  //       .getFiles()
  //       .then((_) {
  //     // Call setState to rebuild the widget after getting the files
  //     setState(() {});
  //   });
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('File.io Flutter App'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              Provider.of<FileIoApiService>(_scaffoldKey.currentContext!,
                  listen: true)
                  .getFiles();
            },
          )
        ],
      ),
      body: Consumer<FileIoApiService>(
        builder: (context, fileProvider, child) {
          if (fileProvider.files == null) {
            print("fileProvider.files is null");
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          print("fileProvider.files is not null");
          return ListView.builder(
            itemCount: fileProvider.files!.length,
            itemBuilder: (context, index) {
              dynamic file = fileProvider.files![index];
              return ListTile(
                title: Text(file.name!),
                trailing: IconButton(
                  icon: const Icon(Icons.download),
                  onPressed: () async {
                    await fileProvider.downloadFile(file.key!);
                  },
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          FilePickerResult? result =
          await FilePicker.platform.pickFiles(allowMultiple: false);

          if (result != null) {
            PlatformFile file = result.files.first;
            String filePath = file.path!;
            Provider.of<FileIoApiService>(_scaffoldKey.currentContext!,
                listen: false)
                .uploadFile(filePath);
          }
        },
      ),
    );
  }


}



