
import 'dart:convert';

PostResponds cartFromJson(String str) => PostResponds.fromJson(json.decode(str));

String cartToJson(PostResponds data) => json.encode(data.toJson());

class PostResponds {
  PostResponds({
    this.page,
    this.perPage,
    this.total,
    this.totalPages,
    this.data,
    this.support,
  });

  int? page;
  int? perPage;
  int? total;
  int? totalPages;
  List<CartData>? data;
  Support? support;

  factory PostResponds.fromJson(Map<String, dynamic> json) => PostResponds(
    page: json["page"],
    perPage: json["per_page"],
    total: json["total"],
    totalPages: json["total_pages"],
    data: json["data"] == null ? null : List<CartData>.from(json["data"].map((x) => CartData.fromJson(x))),
    support: json["support"] == null ? null : Support.fromJson(json["support"]),
  );

  Map<String, dynamic> toJson() => {
    "page": page,
    "per_page": perPage,
    "total": total,
    "total_pages": totalPages,
    "data": data == null ? null : List<dynamic>.from(data!.map((x) => x.toJson())),
    "support": support == null ? null : support!.toJson(),
  };

  PostResponds.withError()
      : data =  null;

}

class CartData {
  CartData({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  int? id;
  String? email;
  String? firstName;
  String? lastName;
  String? avatar;

  factory CartData.fromJson(Map<String, dynamic> json) => CartData(
    id: json["id"],
    email: json["email"],
    firstName: json["first_name"],
    lastName: json["last_name"],
    avatar: json["avatar"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "email": email,
    "first_name": firstName,
    "last_name": lastName,
    "avatar": avatar,
  };
}

class Support {
  Support({
    this.url,
    this.text,
  });

  String? url;
  String? text;

  factory Support.fromJson(Map<String, dynamic> json) => Support(
    url: json["url"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "url": url,
    "text": text,
  };
}
