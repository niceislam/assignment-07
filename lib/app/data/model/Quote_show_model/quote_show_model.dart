class QuoteModel {
  int? id;
  String? categoryId;
  String? quote;
  String? author;
  Null? createdAt;
  Null? updatedAt;

  QuoteModel({
    this.id,
    this.categoryId,
    this.quote,
    this.author,
    this.createdAt,
    this.updatedAt,
  });

  QuoteModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryId = json['category_id'];
    quote = json['quote'];
    author = json['author'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['category_id'] = this.categoryId;
    data['quote'] = this.quote;
    data['author'] = this.author;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
