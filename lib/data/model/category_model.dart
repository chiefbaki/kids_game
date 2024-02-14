class CategoryModel {
  int? id;
  String? createdAt;
  String? updatedAt;
  String? title;
  String? image;

  CategoryModel(
      {this.id, this.createdAt, this.updatedAt, this.title, this.image});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    title = json['title'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['created_at'] = createdAt;
    data['updated_at'] = updatedAt;
    data['title'] = title;
    data['image'] = image;
    return data;
  }
}