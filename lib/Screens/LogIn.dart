import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  bool login = true;
  TextEditingController textinput = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Image.asset(
                    "../assets/images/delivery-boy-2.png",
                    height: 250,
                    width: 400,
                  ),
                  Text(
                    login ? "Enter phone number" : "Enter validation code",
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 2.0, horizontal: 5.0),
                    child: Text(
                      login
                          ? "Integer a efficitur ligula, et euismod turpis. Aenean mi urna, ornare non."
                          : "Maecenas at aliquet sapien. Ut dictum justo diam, eu pretium justo rutrum.",
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
              Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: textinput,
                        autofocus: true,
                        keyboardType:
                            login ? TextInputType.phone : TextInputType.number,
                        decoration: InputDecoration(
                            prefix: login ? Text("+212") : null,
                            hintText:
                                login ? "675755775" : "Validation code sent"),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            textinput.clear();
                            if (!login) {
                              Navigator.of(context)
                                  .pushReplacementNamed("/Home");
                            } else {
                              login = !login;
                            }
                          });
                        },
                        child: Text(login ? "Validate" : "Verify"),
                      ),
                    )
                  ],
                ),
              ),
              Visibility(
                child: TextButton(
                  child: Text('Resend verification code'),
                  onPressed: () {},
                ),
                visible: !login,
              ),
              SizedBox(),
              SizedBox(),
            ],
          ),
        ),
      ),
    );
  }
}
