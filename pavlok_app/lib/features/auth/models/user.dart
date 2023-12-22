class User {
  String? username;
  String? email;
  String? phone;
  String? countryCode;
  bool? phoneConfirmed;
  String? firstName;
  String? lastName;
  String? birthDate;
  double? weight;
  String? weightMeasurementUnit;
  double? height;
  String? heightMeasurementUnit;
  String? resetPasswordToken;
  String? resetPasswordSentAt;
  int? profilePictureId;
  String? profilePictureUrl;
  bool? emailConfirmed;
  bool? anonymous;
  String? role;
  String? timezone;
  Map<String,dynamic>? settings;
  int? id;
  String? token;

  User({this.username, this.email, this.phone, this.countryCode, this.phoneConfirmed, this.firstName, this.lastName, this.birthDate, this.weight, this.weightMeasurementUnit, this.height, this.heightMeasurementUnit, this.resetPasswordToken, this.resetPasswordSentAt, this.profilePictureId, this.profilePictureUrl, this.emailConfirmed, this.anonymous, this.role, this.timezone, this.settings, this.id, this.token});

  User.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    email = json['email'];
    phone = json['phone'];
    countryCode = json['countryCode'];
    phoneConfirmed = json['phoneConfirmed'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    birthDate = json['birthDate'];
    weight = json['weight'];
    weightMeasurementUnit = json['weightMeasurementUnit'];
    height = json['height'];
    heightMeasurementUnit = json['heightMeasurementUnit'];
    resetPasswordToken = json['resetPasswordToken'];
    resetPasswordSentAt = json['resetPasswordSentAt'];
    profilePictureId = json['profilePictureId'];
    profilePictureUrl = json['profilePictureUrl'];
    emailConfirmed = json['emailConfirmed'];
    anonymous = json['anonymous'];
    role = json['role'];
    timezone = json['timezone'];
    settings = json['settings'] ;
    id = json['id'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['countryCode'] = this.countryCode;
    data['phoneConfirmed'] = this.phoneConfirmed;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['birthDate'] = this.birthDate;
    data['weight'] = this.weight;
    data['weightMeasurementUnit'] = this.weightMeasurementUnit;
    data['height'] = this.height;
    data['heightMeasurementUnit'] = this.heightMeasurementUnit;
    data['resetPasswordToken'] = this.resetPasswordToken;
    data['resetPasswordSentAt'] = this.resetPasswordSentAt;
    data['profilePictureId'] = this.profilePictureId;
    data['profilePictureUrl'] = this.profilePictureUrl;
    data['emailConfirmed'] = this.emailConfirmed;
    data['anonymous'] = this.anonymous;
    data['role'] = this.role;
    data['timezone'] = this.timezone;
    data['id'] = this.id;
    data['token'] = this.token;
    return data;
  }
}


