import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String userName = "";
  bool buttonTapped = false;

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
                "Welcome, $userName",
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
                      onChanged: (value) {
                        setState(() {
                          userName = value;
                        });
                      },
                      decoration: const InputDecoration(
                          labelText: "Username",
                          //hintText: "enter email",
                          icon: Icon(Icons.person)),
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
              /*OutlinedButton(
                onPressed: () { Navigator.pushNamed(context, MyRoutes.homePageRoute);},
                style: ElevatedButton.styleFrom(minimumSize: const Size(100, 45)),
                child: const Text("Login"),
              ),*/
              InkWell(
                onTap: () async {
                  setState(() {
                    buttonTapped = !buttonTapped;
                  });

                  await Future.delayed(const Duration(seconds: 1));
                  Navigator.pushNamed(context, MyRoutes.homePageRoute);
                },
                child: AnimatedContainer(
                  // Define how long the animation should take.
                  duration: const Duration(seconds: 1),
                  // Provide an optional curve to make the animation feel smoother.
                  curve: Curves.elasticOut,
                  height: 40,
                  width: buttonTapped ? 60 : 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple,
                      borderRadius: buttonTapped ? BorderRadius.circular(60) :BorderRadius.circular(5)),
                  child: buttonTapped
                      ? const Icon(
                          Icons.thumb_up,
                          color: Colors.white,
                        )
                      : const Text(
                          "Login",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
