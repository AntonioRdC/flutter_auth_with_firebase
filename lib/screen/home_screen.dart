import 'package:flutter/material.dart';
import 'package:emailsenha/services/services_auth.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _email = TextEditingController();
  final TextEditingController _senha = TextEditingController();

  @override
  void dispose() {
    _email.dispose();
    _senha.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextFormField(
                controller: _email,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'E-mail',
                ),
              ),
              TextFormField(
                controller: _senha,
                decoration: const InputDecoration(
                  icon: Icon(Icons.person),
                  hintText: 'senha',
                ),
              ),
              ElevatedButton(
                  onPressed: () => loginUser(_email.text, _senha.text),
                  child: const Text('Logar')),
              ElevatedButton(
                  onPressed: () => registerUser(_email.text, _senha.text),
                  child: const Text('Registrar'))
            ],
          ),
        ),
      ),
    );
  }
}
