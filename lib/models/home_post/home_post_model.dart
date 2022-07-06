class HomePostModel {
  String? sId;
  String? content;
  String? photo;
  int? userId;
  List<int>? interestId;
  String? updatedAt;
  String? createdAt;
  String? isPrometed;

  HomePostModel(
      {this.sId,
      this.photo,
      this.userId,
      this.interestId,
      this.updatedAt,
      this.createdAt,
      this.isPrometed,
      this.content});

  HomePostModel.fromJson(Map<String, dynamic> json) {
    content = json['content'];
    sId = json['_id'];
    photo = json['photo'];
    userId = json['user_id'];
    interestId = json['interest_id'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    isPrometed = json['is_prometed'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['_id'] = this.sId;
    data['content'] = this.content;
    data['photo'] = this.photo;
    data['user_id'] = this.userId;
    data['interest_id'] = this.interestId;
    data['updated_at'] = this.updatedAt;
    data['created_at'] = this.createdAt;
    data['is_prometed'] = this.isPrometed;
    return data;
  }
}
