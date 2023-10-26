class DetailUserModel {
  final Data? data;
  final Support? support;
  DetailUserModel({
    this.data,
    this.support,
  });

  DetailUserModel.fromJson(Map<String, dynamic> json)
      : data = (json['data'] as Map<String, dynamic>?) != null
            ? Data.fromJson(json['data'] as Map<String, dynamic>)
            : null,
        support = (json['support'] as Map<String, dynamic>?) != null
            ? Support.fromJson(json['support'] as Map<String, dynamic>)
            : null;

  Map<String, dynamic> toJson() =>
      {'data': data?.toJson(), 'support': support?.toJson()};
}

class Data {
  final int? id;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? avatar;

  Data({
    this.id,
    this.email,
    this.firstName,
    this.lastName,
    this.avatar,
  });

  Data.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        email = json['email'] as String?,
        firstName = json['first_name'] as String?,
        lastName = json['last_name'] as String?,
        avatar = json['avatar'] as String?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'first_name': firstName,
        'last_name': lastName,
        'avatar': avatar
      };
}

class Support {
  final String? url;
  final String? text;

  Support({
    this.url,
    this.text,
  });

  Support.fromJson(Map<String, dynamic> json)
      : url = json['url'] as String?,
        text = json['text'] as String?;

  Map<String, dynamic> toJson() => {'url': url, 'text': text};
}
