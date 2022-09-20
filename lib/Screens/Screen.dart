import 'package:flutter/material.dart';
import 'package:myapp/main.dart';

class MyLoginApp extends StatelessWidget {
  // const MyLoginApp({super.key});

  bool hidePasswoed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 7, 53, 77),
          actions: [Icon(Icons.login)],
          centerTitle: hidePasswoed,
          title: Text("Login"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(30),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "flutter@example.com",
                      contentPadding: EdgeInsets.symmetric(horizontal: 3),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(Icons.mail),
                      label: Text("Enter your email...")),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.all(30),
                child: TextField(
                  obscureText: hidePasswoed,
                  decoration: InputDecoration(
                      hintText: "No less than 8 digits",
                      contentPadding: EdgeInsets.symmetric(horizontal: 3),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      prefixIcon: Icon(Icons.visibility_off),
                      label: Text("password...")),
                ),
              ),
            ),
            Row(
              children: [
                Padding(padding: EdgeInsets.all(15)),
                ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.login),
                    label: Text("Login")),
                Padding(padding: EdgeInsets.all(15)),
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Home_Page();
                        },
                      ));
                    },
                    icon: Icon(Icons.fingerprint),
                    label: Text("Press")),
                Padding(padding: EdgeInsets.all(15)),
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return Home_Page();
                        },
                      ));
                    },
                    icon: Icon(Icons.dialpad),
                    label: Text("Login"))
              ],
            )
          ],
        ));
  }
}
