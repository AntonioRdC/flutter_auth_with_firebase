import 'package:firebase_auth/firebase_auth.dart';

Future<void> registerUser(String email, String senha) async {
  final credential = await FirebaseAuth.instance
      .createUserWithEmailAndPassword(email: email, password: senha);
}

Future<void> loginUser(String email, String senha) async {
  final credential = await FirebaseAuth.instance
      .signInWithEmailAndPassword(email: email, password: senha);
}
