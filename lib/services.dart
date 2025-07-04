import 'package:firebase_auth/firebase_auth.dart';

Future<void> signup({
  required String name,
  required String email,
  required String password,
  required String confirmpassword,
}) async {await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);}
