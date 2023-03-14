import 'dart:convert';
import 'dart:html';

List<Banners> bannerFromJson(String str) => List<Banners>.from(json.decode(str).map((x) => Banners.fromJson(x)));

String bannerToJson(List<Banners> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Banners {
    Banners({
        required this.id,
        required this.images,
    });

    String id;
    String images;

    factory Banners.fromJson(Map<String, dynamic> json) => Banners(
        id: json["_id"],
        images: json["images"],
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "images": images,
    };
}