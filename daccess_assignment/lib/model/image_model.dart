class ImageModel {
  bool? success;
  int? totalPhotos;
  String? message;
  int? offset;
  int? limit;
  List<Photos>? photos;

  ImageModel(
      {this.success,
      this.totalPhotos,
      this.message,
      this.offset,
      this.limit,
      this.photos});

  ImageModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    totalPhotos = json['total_photos'];
    message = json['message'];
    offset = json['offset'];
    limit = json['limit'];
    if (json['photos'] != null) {
      photos = <Photos>[];
      json['photos'].forEach((v) {
        photos!.add(new Photos.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    data['total_photos'] = this.totalPhotos;
    data['message'] = this.message;
    data['offset'] = this.offset;
    data['limit'] = this.limit;
    if (this.photos != null) {
      data['photos'] = this.photos!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Photos {
  String? url;
  String? title;
  int? user;
  int? id;
  String? description;

  Photos({this.url, this.title, this.user, this.id, this.description});

  Photos.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    title = json['title'];
    user = json['user'];
    id = json['id'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    data['title'] = this.title;
    data['user'] = this.user;
    data['id'] = this.id;
    data['description'] = this.description;
    return data;
  }
}
