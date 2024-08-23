import 'package:flutter/material.dart';
import '../models/organization.dart';

class OrganizationProvider extends ChangeNotifier {
  Organization _organization = Organization();

  Organization get organization => _organization;

  void updateOrganizationField({
    String? organizationName,
    String? address,
    String? organizationPhone,
    String? organizationCep,
  }) {
    _organization = _organization.copyWith(
      organizationName: organizationName,
      address: address,
      organizationPhone: organizationPhone,
      organizationCep: organizationCep,
    );
    notifyListeners();
  }
}
