import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user_provider.dart';
import '../providers/organization_provider.dart';

class DisplayFinalDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;
    final organization =
        Provider.of<OrganizationProvider>(context).organization;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          title: Text(''),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.white),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(16.0), 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Formulário de Endereço',
                  style: TextStyle(color: const Color.fromRGBO(255, 255, 255, 1), fontSize: 32.0),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 67, 75, 110),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(70.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 35, 41, 63),
              borderRadius: BorderRadius.circular(10.0),
            ),
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Nome: ${user.firstName ?? ''} ',
                    style: TextStyle(color: Colors.white, fontSize: 18.0)),

                Text('Email: ${user.email ?? ''}',
                    style: TextStyle(color: Colors.white, fontSize: 18.0)),

                Text('Telefone: ${user.phone ?? ''}',
                    style: TextStyle(color: Colors.white, fontSize: 18.0)),

                Text('Curso: ${user.subjectIdea ?? ''}',
                    style: TextStyle(color: Colors.white, fontSize: 18.0)),

                Text(
                    'Rua: ${organization.organizationName ?? ''} ',
                    style: TextStyle(color: Colors.white, fontSize: 18.0)),

                Text('Numero: ${organization.address ?? ''} ',
                    style: TextStyle(color: Colors.white, fontSize: 18.0)),

                Text(
                    'Bairro: ${organization.organizationPhone ?? ''} ',
                    style: TextStyle(color: Colors.white, fontSize: 18.0)),

                Text(
                    'CEP: ${organization.organizationCep ?? ''} ',
                    style: TextStyle(color: Colors.white, fontSize: 18.0)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
