class Posts_model {
  int? userId;
  int? id;
  String? title;
  String? body;

  Posts_model({
      this.userId, 
      this.id, 
      this.title, 
      this.body});

  Posts_model.fromJson(dynamic json) {
    userId = json["userId"];
    id = json["id"];
    title = json["title"];
    body = json["body"];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map["userId"] = userId;
    map["id"] = id;
    map["title"] = title;
    map["body"] = body;
    return map;
  }

}