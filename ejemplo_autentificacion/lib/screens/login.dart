import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


class LoginScreen extends StatefulWidget{

  @override
  _LoginScreenState createState()=> _LoginScreenState();

}

class _LoginScreenState extends State<LoginScreen>{

  final _emailFieldController = TextEditingController();
  final _passwordFieldController = TextEditingController();

  final _focusEmail = FocusNode();
  final _focusPassword = FocusNode();

  @override
  Widget build(){

    return GestureDetector(
      onTap: (){
        _focusEmail.unfocus();
        _focusPassword.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Login'),
        ),
        body: FutureBuilder(
          future: _initFirebase(),
          builder: (context,snapshot){
            if(snapshot.connectionState == ConnectionState.done) {
              return Column(
                children: [
                  Text('Login',
                    style: Theme
                        .of(context)
                        .textTheme
                        .displayLarge,
                  ),
                  TextField(
                    controller: _emailFieldController,
                    focusNode: _focusEmail,
                    decoration: const InputDecoration(
                        hintText: 'eMail'
                    ),
                  ),
                  TextField(
                    controller: _passwordFieldController,
                    focusNode: _focusPassword,
                    decoration: const InputDecoration(
                        hintText: 'Password'
                    ),

                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ElevatedButton(
                        onPressed: null,
                        child: Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: null,
                        child: Text(
                          'Register',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ],
              );
            }
            return const CircularProgressIndicator();
          },

        ),

      ),
    );

  }

  Future<FirebaseApp> _initFirebase() async{
    FirebaseApp firebaseApp = await Firebase.initializeApp();
    return firebaseApp;
  }

}