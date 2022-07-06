class UserModel {
  UserData? user;
  String? token;

  UserModel.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? UserData.fromJson(json['user']) : null;
    token = json["token"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['token'] = this.token;
    return data;
  }
}

class UserData {
  int? id;
  String? name;
  String? email;
  int? gender;
  String? birthday;
  String? code;
  bool? isPromtion;
  int? numberOfPosts;
  String? createdAt;
  String? updatedAt;

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    gender = json['gender'];
    birthday = json['birthday'];
    code = json['code'];
    isPromtion = json['is_promtion'];
    numberOfPosts = json['number_of_posts'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['gender'] = this.gender;
    data['birthday'] = this.birthday;
    data['code'] = this.code;
    data['is_promtion'] = this.isPromtion;
    data['number_of_posts'] = this.numberOfPosts;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;

    return data;
  }
}




// {
//     "user": {
//         "id": 2,
//         "name": "JOUDY TALEB",
//         "email": "jody50@gmail.com",
//         "email_verified_at": null,
//         "gender": 1,
//         "birthday": "2001-01-14",  `
//         "code": null,
//         "is_promtion": null,
//         "number_of_posts": null,
//         "created_at": "2022-06-15T12:12:44.000000Z",
//         "updated_at": "2022-06-15T12:12:44.000000Z"
//     },
//     "token": "7|843WTMY2JJhk3ZWq4DYWgDzihi1ykl2M7vwOTgDX"
// }