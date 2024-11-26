import 'package:flutter/material.dart';
import 'beranda.dart';

class login extends StatelessWidget {
 final TextEditingController usernameController = TextEditingController();
 final TextEditingController passwordController = TextEditingController();
 final GlobalKey<FormState> _formKey =  GlobalKey<FormState>();

 @override
  Widget build(BuildContext context){
   return Scaffold(
    appBar: AppBar(
      title: Text('Halaman masuk'),
    ),
    body:Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextFormField(
              controller: usernameController,
              decoration: InputDecoration(
                labelText:  'Nama',
                border: OutlineInputBorder(),
              ),
              validator: (value) {
                {
                  return 'silahkan masukan nama';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            TextFormField(
              controller: passwordController,
              decoration: InputDecoration(
                labelText:'kata sandi',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
              validator:  (value) {
                {
                return 'silahkan masukan kata sandi';
                }
                return null;
              },
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed:  () {
                {
                   Navigator.pushReplacement(
                   context,
                   MaterialPageRoute(builder: (context) => beranda ()),
                   );
                }
              },
              child: Text('login'),
            ),
          ],
        ),
      ),
    )
   );
  }
  }
 


