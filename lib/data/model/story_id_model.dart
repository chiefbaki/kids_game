class StoryIdModel {
  int? id;
  String? title;
  String? image;
  List<Text>? text;

  StoryIdModel({this.id, this.title, this.image, this.text});

  StoryIdModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    if (json['text'] != null) {
      text = <Text>[];
      json['text'].forEach((v) {
        text!.add(Text.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  Map<String, dynamic>();
    data['id'] = id;
    data['title'] = title;
    data['image'] = image;
    if (text != null) {
      data['text'] = text!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Text {
  String? title;

  Text({this.title});

  Text.fromJson(Map<String, dynamic> json) {
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data =  <String, dynamic>{};
    data['title'] = title;
    return data;
  }
}
