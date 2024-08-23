import 'package:app_provider/providers/user_provider.dart';
import 'package:app_provider/providers/organization_provider.dart'; // Importe o OrganizationProvider
import 'package:app_provider/views/user_form_views.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      // Use MultiProvider para fornecer múltiplos provedores
      providers: [
        ChangeNotifierProvider(create: (context) => UserProvider()),
        ChangeNotifierProvider(
            create: (context) =>
                OrganizationProvider()), // Fornecer o OrganizationProvider
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: UserFormScreen(),
      ),
    );
  }
}
