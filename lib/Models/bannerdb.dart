

import 'dart:convert';

List<Banners> bannerFromJson(String str) => List<Banners>.from(json.decode(str).map((x) => Banners.fromJson(x)));

String bannerToJson(List<Banners> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Banners {
  Banners({
     this.id,
     this.images,
  });

  final String id;
  final String images;

  factory Banners.fromJson(Map<String, dynamic> json) => Banners(
    id: json["_id"] == null ? null : json["_id"],
    images: json["images"]["url"] == null ? null : json["images"]["url"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id == null ? null : id,
    "image": images == null ? null : images,
  };
}