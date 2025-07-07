import 'package:flutter/material.dart';
import 'package:loginapp/login.dart';
import 'package:loginapp/services.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final formkey=GlobalKey<FormState>();
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  TextEditingController confirmpasswordcontroller = TextEditingController();
  bool visible=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Form(key: formkey,
        child: Center(
          child: Container(
            height: 650,
            width: 350,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Sign up",
                    style: TextStyle(fontSize: 40, color: Colors.black),
                  ),
                  Text("create an account,it's free"),
                  SizedBox(height: 50),
                  Align(child: Text("USERNAME"), alignment: Alignment.topLeft),
                  TextFormField(
                    controller: namecontroller,
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

                  Align(child: Text("EMAIL"), alignment: Alignment.topLeft),
                  TextFormField(validator: (value){
                    if((value==null)||(value.isEmpty))
                    {
                      return "Email Required";
                    }
                    if(!value.contains("@"))
                    {
                      return "invalid email";
                    }
                    return null;
                  },
                    controller: emailcontroller,
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
                  Align(child: Text("PASSWORD"), alignment: Alignment.topLeft),
                  TextFormField(obscureText: !visible,
                    controller: passwordcontroller,
                    decoration: InputDecoration(suffixIcon:IconButton(onPressed: () {
                      setState(() {
                        visible=!visible;
                      });
                    }, icon:  visible?Icon(Icons.visibility):Icon(Icons.visibility_off)),
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

                  Align(
                    child: Text("CONFIRM PASSWORD"),
                    alignment: Alignment.topLeft,
                  ),
                  TextFormField(obscureText: !visible,
                    validator: (value){
                      if(value!=passwordcontroller.text){
                        return "password not matching";
                      }
                    },
                    controller: confirmpasswordcontroller,
                    decoration: InputDecoration(suffixIcon:IconButton(onPressed: () {
                      setState(() {
                        visible=!visible;
                      });
                    }, icon:  visible?Icon(Icons.visibility):Icon(Icons.visibility_off)),
                      filled: true,
                      fillColor: Colors.white,
                      labelStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(7),
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    height: 50,
                    width: 200,
                    child: ElevatedButton(
                      onPressed: () {
                        signup(
                          name: namecontroller.text,
                          email: emailcontroller.text,
                          password: passwordcontroller.text,
                          confirmpassword: confirmpasswordcontroller.text,context: context

                        );
                      },
                      child: Text(
                        "Sign up",
                        style: TextStyle(color: Colors.black),
                      ),
                      style: ElevatedButton.styleFrom(
                        side: BorderSide(color: Colors.black, width: 1),
                        backgroundColor: Colors.blue,
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Already have an account?"),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Logpage()),
                          );
                        },
                        child: Text(
                          "Login",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
