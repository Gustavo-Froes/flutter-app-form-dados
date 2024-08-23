import 'package:app_provider/models/organization.dart';
import 'package:app_provider/views/display_final_data_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/organization_provider.dart';

class OrganizationFormView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Consumer<OrganizationProvider>(
            builder: (context, organizationProvider, _) {
              return Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 35, 41, 63),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration:
                        const InputDecoration(labelText: 'Rua', labelStyle: TextStyle(color: Colors.white)),
                    onChanged: (value) {
                      organizationProvider.updateOrganizationField(
                          organizationName: value);
                    },
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                        labelText: 'Numero', labelStyle: TextStyle(color: Colors.white)),
                    onChanged: (value) {
                      organizationProvider.updateOrganizationField(
                          address: value);
                    },
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration: const InputDecoration(
                        labelText: 'Bairro', labelStyle: TextStyle(color: Colors.white)),
                    onChanged: (value) {
                      organizationProvider.updateOrganizationField(
                          organizationPhone: value);
                    },
                  ),
                  TextField(
                    style: TextStyle(color: Colors.white),
                    decoration:
                        const InputDecoration(labelText: 'CEP', labelStyle: TextStyle(color: Colors.white)),
                    onChanged: (value) {
                      organizationProvider.updateOrganizationField(
                          organizationCep: value);
                    },
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.only(top: 10.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DisplayFinalDataScreen(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 194, 26, 26)),
                    ),
                    child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Text('Salvar', style: TextStyle(color: Color.fromARGB(255, 236, 207, 168), fontSize: 16.0)),
                    ),
                   ),
                  ),
                ],
               )
              );
            },
          ),
        ),
      ),
    );
  }
}
