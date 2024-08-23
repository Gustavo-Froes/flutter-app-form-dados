class User {
  String? firstName;
  String? lastName;
  String? email;
  String? title;
  String? phone;
  String? subjectIdea;
  String? descriptionOfIdea;

  User({
    this.firstName,
    this.lastName,
    this.email,
    this.title,
    this.phone,
    this.subjectIdea,
    this.descriptionOfIdea,
  });

  User copyWith({
    String? firstName,
    String? lastName,
    String? email,
    String? title,
    String? phone,
    String? subjectIdea,
    String? descriptionOfIdea,
  }) {
    return User(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      title: title ?? this.title,
      phone: phone ?? this.phone,
      subjectIdea: subjectIdea ?? this.subjectIdea,
      descriptionOfIdea: descriptionOfIdea ?? this.descriptionOfIdea,
    );
  }
}
