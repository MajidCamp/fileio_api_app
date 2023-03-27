import 'dart:convert';
/// success : true
/// status : 200
/// nodes : [{"id":"4963e730-c964-11ed-bf1e-e3c8a3b8b0b2","key":"1f7MTKJ5xFgE","path":"/","nodeType":"file","name":"File5.txt","title":null,"description":null,"size":7,"link":"https://file.io/1f7MTKJ5xFgE","private":false,"expires":"2023-04-06T10:20:08.354Z","downloads":0,"maxDownloads":1,"autoDelete":true,"planId":0,"screeningStatus":"passed","mimeType":"text/plain","created":"2023-03-23T10:20:08.354Z","modified":"2023-03-23T10:20:08.354Z"},{"id":"468b4bc0-c964-11ed-bd41-e5c04effb890","key":"uHrFYNcD5fLC","path":"/","nodeType":"file","name":"File4.txt","title":null,"description":null,"size":9,"link":"https://file.io/uHrFYNcD5fLC","private":false,"expires":"2023-04-06T10:20:03.580Z","downloads":0,"maxDownloads":1,"autoDelete":true,"planId":0,"screeningStatus":"passed","mimeType":"text/plain","created":"2023-03-23T10:20:03.580Z","modified":"2023-03-23T10:20:03.580Z"},{"id":"3e2750f0-c964-11ed-8eb3-f3d6700cfe6a","key":"ZP5K6FQ4E6Dc","path":"/","nodeType":"file","name":"File2.txt","title":null,"description":null,"size":7,"link":"https://file.io/ZP5K6FQ4E6Dc","private":false,"expires":"2023-04-06T10:19:49.503Z","downloads":0,"maxDownloads":1,"autoDelete":true,"planId":0,"screeningStatus":"passed","mimeType":"text/plain","created":"2023-03-23T10:19:49.503Z","modified":"2023-03-23T10:19:49.503Z"},{"id":"3a3aad70-c964-11ed-bd41-e5c04effb890","key":"RQlwqpYwmWyd","path":"/","nodeType":"file","name":"File1.txt","title":null,"description":null,"size":9,"link":"https://file.io/RQlwqpYwmWyd","private":false,"expires":"2023-04-06T10:19:42.919Z","downloads":0,"maxDownloads":1,"autoDelete":true,"planId":0,"screeningStatus":"passed","mimeType":"text/plain","created":"2023-03-23T10:19:42.919Z","modified":"2023-03-23T10:19:42.919Z"}]
/// count : 4
/// size : 32
/// screeningStatus : "passed"

FileResponse fileResponseFromJson(String str) => FileResponse.fromJson(json.decode(str));
String fileResponseToJson(FileResponse data) => json.encode(data.toJson());
class FileResponse {
  FileResponse({
      this.success, 
      this.status, 
      this.nodes, 
      this.count, 
      this.size, 
      this.screeningStatus,});

  FileResponse.fromJson(dynamic json) {
    success = json['success'];
    status = json['status'];
    if (json['nodes'] != null) {
      nodes = [];
      json['nodes'].forEach((v) {
        nodes?.add(Nodes.fromJson(v));
      });
    }
    count = json['count'];
    size = json['size'];
    screeningStatus = json['screeningStatus'];
  }
  bool? success;
  int? status;
  List<Nodes>? nodes;
  int? count;
  int? size;
  String? screeningStatus;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['success'] = success;
    map['status'] = status;
    if (nodes != null) {
      map['nodes'] = nodes?.map((v) => v.toJson()).toList();
    }
    map['count'] = count;
    map['size'] = size;
    map['screeningStatus'] = screeningStatus;
    return map;
  }

}

/// id : "4963e730-c964-11ed-bf1e-e3c8a3b8b0b2"
/// key : "1f7MTKJ5xFgE"
/// path : "/"
/// nodeType : "file"
/// name : "File5.txt"
/// title : null
/// description : null
/// size : 7
/// link : "https://file.io/1f7MTKJ5xFgE"
/// private : false
/// expires : "2023-04-06T10:20:08.354Z"
/// downloads : 0
/// maxDownloads : 1
/// autoDelete : true
/// planId : 0
/// screeningStatus : "passed"
/// mimeType : "text/plain"
/// created : "2023-03-23T10:20:08.354Z"
/// modified : "2023-03-23T10:20:08.354Z"

Nodes nodesFromJson(String str) => Nodes.fromJson(json.decode(str));
String nodesToJson(Nodes data) => json.encode(data.toJson());
class Nodes {
  Nodes({
      this.id, 
      this.key, 
      this.path, 
      this.nodeType, 
      this.name, 
      this.title, 
      this.description, 
      this.size, 
      this.link, 
      this.private, 
      this.expires, 
      this.downloads, 
      this.maxDownloads, 
      this.autoDelete, 
      this.planId, 
      this.screeningStatus, 
      this.mimeType, 
      this.created, 
      this.modified,});

  Nodes.fromJson(dynamic json) {
    id = json['id'];
    key = json['key'];
    path = json['path'];
    nodeType = json['nodeType'];
    name = json['name'];
    title = json['title'];
    description = json['description'];
    size = json['size'];
    link = json['link'];
    private = json['private'];
    expires = json['expires'];
    downloads = json['downloads'];
    maxDownloads = json['maxDownloads'];
    autoDelete = json['autoDelete'];
    planId = json['planId'];
    screeningStatus = json['screeningStatus'];
    mimeType = json['mimeType'];
    created = json['created'];
    modified = json['modified'];
  }
  String? id;
  String? key;
  String? path;
  String? nodeType;
  String? name;
  dynamic title;
  dynamic description;
  int? size;
  String? link;
  bool? private;
  String? expires;
  int? downloads;
  int? maxDownloads;
  bool? autoDelete;
  int? planId;
  String? screeningStatus;
  String? mimeType;
  String? created;
  String? modified;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['key'] = key;
    map['path'] = path;
    map['nodeType'] = nodeType;
    map['name'] = name;
    map['title'] = title;
    map['description'] = description;
    map['size'] = size;
    map['link'] = link;
    map['private'] = private;
    map['expires'] = expires;
    map['downloads'] = downloads;
    map['maxDownloads'] = maxDownloads;
    map['autoDelete'] = autoDelete;
    map['planId'] = planId;
    map['screeningStatus'] = screeningStatus;
    map['mimeType'] = mimeType;
    map['created'] = created;
    map['modified'] = modified;
    return map;
  }

}