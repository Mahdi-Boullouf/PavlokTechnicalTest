class Stimulus {
  int? id;
  String? type;
  int? value;
  String? sentAt;
  int? sentBy;
  int? sentTo;
  String? createdAt;
  String? updatedAt;
  String? via;
  String? message;
  String? pushedAt;
  String? failedAt;
  String? failureMessage;
  int? sentByApp;
  String? reason;
  String? pattern;
  int? repeat;
  bool? deleted;
  String? userDate;
  bool? recent;
  String? meta;

  Stimulus(
      {this.id,
        this.type,
        this.value,
        this.sentAt,
        this.sentBy,
        this.sentTo,
        this.createdAt,
        this.updatedAt,
        this.via,
        this.message,
        this.pushedAt,
        this.failedAt,
        this.failureMessage,
        this.sentByApp,
        this.reason,
        this.pattern,
        this.repeat,
        this.deleted,
        this.userDate,
        this.recent,
        this.meta});

  Stimulus.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    value = json['value'];
    sentAt = json['sentAt'];
    sentBy = json['sentBy'];
    sentTo = json['sentTo'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    via = json['via'];
    message = json['message'];
    pushedAt = json['pushedAt'];
    failedAt = json['failedAt'];
    failureMessage = json['failureMessage'];
    sentByApp = json['sentByApp'];
    reason = json['reason'];
    pattern = json['pattern'];
    repeat = json['repeat'];
    deleted = json['deleted'];
    userDate = json['userDate'];
    recent = json['recent'];
    meta = json['meta'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    data['value'] = this.value;
    data['sentAt'] = this.sentAt;
    data['sentBy'] = this.sentBy;
    data['sentTo'] = this.sentTo;
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['via'] = this.via;
    data['message'] = this.message;
    data['pushedAt'] = this.pushedAt;
    data['failedAt'] = this.failedAt;
    data['failureMessage'] = this.failureMessage;
    data['sentByApp'] = this.sentByApp;
    data['reason'] = this.reason;
    data['pattern'] = this.pattern;
    data['repeat'] = this.repeat;
    data['deleted'] = this.deleted;
    data['userDate'] = this.userDate;
    data['recent'] = this.recent;
    data['meta'] = this.meta;
    return data;
  }
}