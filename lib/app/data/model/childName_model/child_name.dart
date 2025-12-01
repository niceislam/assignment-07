class ChildNameModel {
  int? id;
  String? religionId;
  String? religion;
  String? gender;
  String? nameBn;
  String? nameEn;
  String? bnMeaning;
  String? createdAt;
  String? updatedAt;

  ChildNameModel(
      {this.id,
        this.religionId,
        this.religion,
        this.gender,
        this.nameBn,
        this.nameEn,
        this.bnMeaning,
        this.createdAt,
        this.updatedAt});

  ChildNameModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    religionId = json['religion_id'];
    religion = json['religion'];
    gender = json['gender'];
    nameBn = json['name_bn'];
    nameEn = json['name_en'];
    bnMeaning = json['bn_meaning'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['religion_id'] = this.religionId;
    data['religion'] = this.religion;
    data['gender'] = this.gender;
    data['name_bn'] = this.nameBn;
    data['name_en'] = this.nameEn;
    data['bn_meaning'] = this.bnMeaning;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
