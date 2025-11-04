class RegisterMerchantModel {
  String? name;
  String? email;
  String? phone;
  String? password;
  String? passwordConfirmation;
  int? governorateId;
  int? regionId;

    RegisterMerchantModel({
    this.phone,
    this.password,
    this.email,
    this.name,
    this.passwordConfirmation,
    this.governorateId,
    this.regionId,
  });

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['RegionId'] = regionId;
    map['GovernorateId'] = governorateId;
    map['phone_number'] = phone;
    map['password'] = password;
    map['password_confirmation'] = passwordConfirmation;
    map['email'] = email;
    map['name'] = name;
    return map;
  }
}

