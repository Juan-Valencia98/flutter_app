// To parse this JSON data, do
//
//     final ModelsProductos = ModelsProductosFromJson(jsonString);

import 'dart:convert';

List<ModelsProductos> modelsProductosFromJson(String str) =>
    List<ModelsProductos>.from(
        json.decode(str).map((x) => ModelsProductos.fromJson(x)));

String modelsProductosToJson(List<ModelsProductos> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class ModelsProductos {
  ModelsProductos({
    this.id,
    this.title,
    this.price,
    this.description,
    this.category,
    this.images,
    this.categoryId,
  });

  int? id;
  String? title;
  int? price;
  String? description;
  Category? category;
  List<String>? images;
  int? categoryId;

  factory ModelsProductos.fromJson(Map<String, dynamic> json) =>
      ModelsProductos(
        id: json["id"],
        title: json["title"],
        price: json["price"],
        description: json["description"],
        category: Category.fromJson(json["category"]),
        images: List<String>.from(json["images"].map((x) => x)),
        categoryId: json["categoryId"] == null ? null : json["categoryId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,
        "category": category,
        "images": images,
        "categoryId": categoryId == null ? null : categoryId,
      };
}

class Category {
  Category({
    this.id,
    this.name,
    this.image,
    this.keyLoremSpace,
  });

  int? id;
  String? name;
  String? image;
  String? keyLoremSpace;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
        id: json["id"],
        name: json["name"],
        image: json["image"],
        keyLoremSpace:
            json["keyLoremSpace"] == null ? null : json["keyLoremSpace"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "image": image,
        "keyLoremSpace": keyLoremSpace == null ? null : keyLoremSpace,
      };
}
