import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class MainLogInScreen extends StatefulWidget {
  const MainLogInScreen({super.key});

  @override
  State<MainLogInScreen> createState() => _MainLogInScreenState();
}

class _MainLogInScreenState extends State<MainLogInScreen> {
  bool isSelected = false;

  void _login() {
    Navigator.pushNamed(context, 'Elementos');
  }

  void _loginWithFacebook() {
    // Add your Facebook login logic here
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 5.0,
        backgroundColor: Color.fromARGB(255, 95, 95, 95),
        title: const Center(
          child: Text(
            'Login Screen',
            style: TextStyle(color: Colors.black, fontSize: 24),
          ),
        ),
        leading: Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 20),
              const Text(
                "Bienvenid@",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Usuario/Email",
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  fillColor: Color.fromARGB(255, 224, 205, 226),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.visibility_off),
                  labelText: "Contraseña",
                  labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  fillColor: Color.fromARGB(255, 224, 205, 226),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "¿Olvidaste tu contraseña?",
                    style: TextStyle(fontSize: 12, color: Colors.red),
                  ),
                ),
              ),
              Row(
                children: [
                  Checkbox(
                    activeColor: Color.fromARGB(255, 0, 0, 0),
                    value: isSelected,
                    onChanged: (newValue) {
                      setState(() {
                        isSelected = newValue!;
                      });
                    },
                  ),
                  Text(
                    "Recuerdame",
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey[700]!,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: const Size(300, 50),
                  backgroundColor: Color.fromARGB(255, 34, 34, 34),
                ),
                onPressed: _login,
                child: const Text(
                  "Iniciar Sesión",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                  ),
                ),
              ),
              ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: const Size(300, 50),
                  backgroundColor: const Color.fromARGB(255, 252, 252, 252),
                ),
                onPressed: _loginWithFacebook,
                icon: Icon(
                  Icons.facebook_rounded,
                  color: Color.fromARGB(255, 0, 0, 0),
                  size: 24.0,
                ),
                label: const Text(
                  'Iniciar Sesión con Facebook',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
              ),
              Text.rich(
                TextSpan(
                  style: const TextStyle(
                    fontSize: 15,
                  ),
                  children: [
                    const TextSpan(text: "¿Aún no tienes cuenta? "),
                    TextSpan(
                      style: const TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                      text: "Crea una cuenta",
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.pushNamed(context, 'Singup');
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
