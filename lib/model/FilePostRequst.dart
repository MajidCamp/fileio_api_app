import 'dart:convert';
/// success : true
/// status : 0
/// id : "3fa85f64-5717-4562-b3fc-2c963f66afa6"
/// key : "string"
/// name : "string"
/// link : "string"
/// expires : "2023-03-23T21:46:46.420Z"
/// expiry : "string"
/// downloads : 0
/// maxDownloads : 0
/// autoDelete : true
/// size : 0
/// mimeType : "string"
/// created : "2023-03-23T21:46:46.420Z"
/// modified : "2023-03-23T21:46:46.420Z"

FilePostRequst filePostRequstFromJson(String str) => FilePostRequst.fromJson(json.decode(str));
String filePostRequstToJson(FilePostRequst data) => json.encode(data.toJson());
class FilePostRequst {
  FilePostRequst({
      this.success, 
      this.status, 
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

  FilePostRequst.fromJson(dynamic json) {
    success = json['success'];
    status = json['status'];
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
  bool? success;
  int? status;
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
FilePostRequst copyWith({  bool? success,
  int? status,
  String? id,
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
}) => FilePostRequst(  success: success ?? this.success,
  status: status ?? this.status,
  id: id ?? this.id,
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
    map['success'] = success;
    map['status'] = status;
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