import 'package:app_provider/views/organization_form_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user_provider.dart';

class DisplayDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context).user;

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
                  'Cadastro do Usuário',
                  style: TextStyle(color: Colors.white, fontSize: 32.0),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 67, 75, 110),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 35, 41, 63),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.all(30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Nome: ${user.firstName ?? ''} ', style: TextStyle(color: Colors.white, fontSize: 18.0)),
                  Text('Email: ${user.email ?? ''}', style: TextStyle(color: Colors.white, fontSize: 18.0)),
                  Text('Telefone: ${user.phone ?? ''}', style: TextStyle(color: Colors.white, fontSize: 18.0)),
                  Text('Curso: ${user.subjectIdea ?? ''}', style: TextStyle(color: Colors.white, fontSize: 18.0)),
                  SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OrganizationFormView(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 194, 26, 26)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Text('Continuar o cadastro', style: TextStyle(color: Color.fromARGB(255, 236, 207, 168), fontSize: 16.0)),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
