import 'dart:convert';
/// count : 0
/// files : [{"id":"3fa85f64-5717-4562-b3fc-2c963f66afa6","key":"string","name":"string","link":"string","expires":"2023-03-23T21:39:54.335Z","expiry":"string","downloads":0,"maxDownloads":0,"autoDelete":true,"size":0,"mimeType":"string","created":"2023-03-23T21:39:54.335Z","modified":"2023-03-23T21:39:54.335Z"}]

FileGetRequest fileGetRequestFromJson(String str) => FileGetRequest.fromJson(json.decode(str));
String fileGetRequestToJson(FileGetRequest data) => json.encode(data.toJson());
class FileGetRequest {
  FileGetRequest({
      this.count, 
      this.files,});

  FileGetRequest.fromJson(dynamic json) {
    count = json['count'];
    if (json['files'] != null) {
      files = [];
      json['files'].forEach((v) {
        files?.add(Files.fromJson(v));
      });
    }
  }
  int? count;
  List<Files>? files;
FileGetRequest copyWith({  int? count,
  List<Files>? files,
}) => FileGetRequest(  count: count ?? this.count,
  files: files ?? this.files,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['count'] = count;
    if (files != null) {
      map['files'] = files?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// id : "3fa85f64-5717-4562-b3fc-2c963f66afa6"
/// key : "string"
/// name : "string"
/// link : "string"
/// expires : "2023-03-23T21:39:54.335Z"
/// expiry : "string"
/// downloads : 0
/// maxDownloads : 0
/// autoDelete : true
/// size : 0
/// mimeType : "string"
/// created : "2023-03-23T21:39:54.335Z"
/// modified : "2023-03-23T21:39:54.335Z"

Files filesFromJson(String str) => Files.fromJson(json.decode(str));
String filesToJson(Files data) => json.encode(data.toJson());
class Files {
  Files({
      this.id, 
      this.key, 
      this.name, 
      this.link, 
      this.expires, 
      this.expiry, 
      this.downloads, 
      this.maxDownloads, 
      this.autoDelete, 
      this.size, 
      this.mimeType, 
      this.created, 
      this.modified,});

  Files.fromJson(dynamic json) {
    id = json['id'];
    key = json['key'];
    name = json['name'];
    link = json['link'];
    expires = json['expires'];
    expiry = json['expiry'];
    downloads = json['downloads'];
    maxDownloads = json['maxDownloads'];
    autoDelete = json['autoDelete'];
    size = json['size'];
    mimeType = json['mimeType'];
    created = json['created'];
    modified = json['modified'];
  }
  String? id;
  String? key;
  String? name;
  String? link;
  String? expires;
  String? expiry;
  int? downloads;
  int? maxDownloads;
  bool? autoDelete;
  int? size;
  String? mimeType;
  String? created;
  String? modified;
Files copyWith({  String? id,
  String? key,
  String? name,
  String? link,
  String? expires,
  String? expiry,
  int? downloads,
  int? maxDownloads,
  bool? autoDelete,
  int? size,
  String? mimeType,
  String? created,
  String? modified,
}) => Files(  id: id ?? this.id,
  key: key ?? this.key,
  name: name ?? this.name,
  link: link ?? this.link,
  expires: expires ?? this.expires,
  expiry: expiry ?? this.expiry,
  downloads: downloads ?? this.downloads,
  maxDownloads: maxDownloads ?? this.maxDownloads,
  autoDelete: autoDelete ?? this.autoDelete,
  size: size ?? this.size,
  mimeType: mimeType ?? this.mimeType,
  created: created ?? this.created,
  modified: modified ?? this.modified,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['key'] = key;
    map['name'] = name;
    map['link'] = link;
    map['expires'] = expires;
    map['expiry'] = expiry;
    map['downloads'] = downloads;
    map['maxDownloads'] = maxDownloads;
    map['autoDelete'] = autoDelete;
    map['size'] = size;
    map['mimeType'] = mimeType;
    map['created'] = created;
    map['modified'] = modified;
    return map;
  }

}