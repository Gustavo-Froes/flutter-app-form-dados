class Organization {
  String? organizationName;
  String? address;
  String? organizationPhone;
  String? organizationCep;

  Organization({
    this.organizationName,
    this.address,
    this.organizationPhone,
    this.organizationCep,
  });

  Organization copyWith({
    String? organizationName,
    String? address,
    String? organizationPhone,
    String? organizationCep,
  }) {
    return Organization(
      organizationName: organizationName ?? this.organizationName,
      address: address ?? this.address,
      organizationPhone: organizationPhone ?? this.organizationPhone,
      organizationCep: organizationCep ?? this.organizationCep,
    );
  }
}