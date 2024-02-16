class StoryIdModel {
  int? id;
  String? title;
  String? image;
  String? audio;
  List<Text>? text;

  StoryIdModel({this.id, this.title, this.image, this.audio, this.text});

  StoryIdModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    image = json['image'];
    audio = json['audio'];
    if (json['text'] != null) {
      text = <Text>[];
      json['text'].forEach((v) {
        text!.add(new Text.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['image'] = this.image;
    data['audio'] = this.audio;
    if (this.text != null) {
      data['text'] = this.text!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    return data;
  }
}
