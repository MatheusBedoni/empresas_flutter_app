
class Enterprise {
  final int id;
  final String name;
  final String description;
  final String email;
  final String facebook;
  final String twitter;
  final String linkedIn;
  final String photo;
  final int value;
  final int shares;
  final double sharePrice;
  final bool ownEnterprise;
  final String city;
  final String country;
  final String phone;
  final Map<String, dynamic> enterpriseType;

  Enterprise({
    this.id,
    this.name,
    this.description,
    this.email,
    this.facebook,
    this.twitter,
    this.linkedIn,
    this.photo,
    this.value,
    this.shares,
    this.sharePrice,
    this.ownEnterprise,
    this.city,
    this.country,
    this.enterpriseType,
    this.phone,
  });

  factory Enterprise.fromJson(Map<String, dynamic> json) {
    return Enterprise(
        id: json['id'],
        city: json['city'],
        country: json['country'],
        description: json['description'],
        email: json['email_enterprise'],
        enterpriseType: json['enterprise_type'],
        facebook: json['facebook'],
        linkedIn: json['linkedIn'],
        twitter: json['twitter'],
        name: json['enterprise_name'],
        photo: json['photo'],
        ownEnterprise: json['own_enterprise'],
        sharePrice: json['share_price'],
        shares: json['shares'],
        value: json['value'],
        phone: json['phone']);
  }
}