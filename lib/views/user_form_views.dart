import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/user_provider.dart';
import '../views/display_data_screen.dart';

class UserFormScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
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
                  'Formulário de Usuário',
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontSize: 32.0),
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 67, 75, 110),
      body: Padding(
        padding: EdgeInsets.all(70.0),
        child: Consumer<UserProvider>(
          builder: (context, userProvider, _) {
            return Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 35, 41, 63),
                borderRadius: BorderRadius.circular(10.0),
              ),
              padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Nome Completo',
                    labelStyle: TextStyle(color: Colors.white)
                    ),
                  onChanged: (value) {
                    userProvider.updateUser(
                        userProvider.user.copyWith(firstName: value));
                  },
                ),

                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Email',
                    labelStyle: TextStyle(color: Colors.white)
                    ),
                  onChanged: (value) {
                    userProvider
                        .updateUser(userProvider.user.copyWith(email: value));
                  },
                ),

                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Telefone',
                    labelStyle: TextStyle(color: Colors.white)
                    ),
                  onChanged: (value) {
                    userProvider
                        .updateUser(userProvider.user.copyWith(phone: value));
                  },
                ),
                TextField(
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    labelText: 'Curso',
                    labelStyle: TextStyle(color: Colors.white)
                    ),
                  onChanged: (value) {
                    userProvider.updateUser(
                        userProvider.user.copyWith(subjectIdea: value));
                  },
                ),

                SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.only(top: 30.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DisplayDataScreen(),
                      ),
                    );
                  },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 194, 26, 26)),
                    ),
                  child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: Text('Proximo', style: TextStyle(color: Color.fromARGB(255, 236, 207, 168), fontSize: 16.0)),
                  ),
                 ),
                ),
              ],
             )
            );
          },
        ),
      ),
    );
  }
}
