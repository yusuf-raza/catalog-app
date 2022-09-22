import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
           // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage("assets/images/login.png"),
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Welcome!",
                style: TextStyle(
                    fontSize: 30,
                    fontFamily: GoogleFonts.pacifico().fontFamily),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 30),
                child: Column(
                  children: [
                    TextFormField(
                      //autofocus: true,
                      decoration: const InputDecoration(
                          labelText: "Email",
                          //hintText: "enter email",
                          icon: Icon(Icons.email)),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                          labelText: "Password",
                          //hintText: "enter password",
                          icon: Icon(Icons.password)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              OutlinedButton(
                onPressed: () { Navigator.pushNamed(context, MyRoutes.homePageRoute);},
                style: ElevatedButton.styleFrom(minimumSize: const Size(100, 45)),
                child: const Text("Login"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
