import 'package:flutter/material.dart';

class Logpage extends StatelessWidget {
  const Logpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          height: 650,
          width: 350,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20,right: 20),
            child: Column(
              children: [
                SizedBox(height: 20),
                Text(
                  'Login',
                  style: TextStyle(fontSize: 40, color: Colors.black),
                ),
                Text('Login to your Account'),
                SizedBox(height: 50),
                Align(child: Text('Email'), alignment: Alignment.topLeft),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.black),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Align(child: Text('Password'), alignment: Alignment.topLeft),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelStyle: TextStyle(color: Colors.black),

                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(7),
                      borderSide: BorderSide(color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                SizedBox(height: 50,width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't you have an account",
                      style: TextStyle(fontSize: 10),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "sign up",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
                Image(image: NetworkImage("data:image/png;base64,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"))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
