import 'package:flutter/material.dart';
import 'package:flutter_ecommerce/utils/routes.dart';

class LoginPage extends StatefulWidget {
  // const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = '';
  bool changeButton = false;
  final _formKey=GlobalKey<FormState>();
   moveToHome() async {
     if(_formKey.currentState!.validate()){
       setState(() {
         changeButton = true;
       });
       await Future.delayed(Duration(seconds: 1));
       await Navigator.pushNamed(context, MyRoutes.homeRoute);
       setState(() {
         changeButton = false;
       });
     }

  }

  @override
  Widget build(BuildContext context) {
    return Material(
      // color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/login.png',
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Welcome",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w400),
            ),
            this.name.isNotEmpty
                ? Text(
                    "${name}!",
                    style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 3),
                  )
                : Text(""),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
              child: Form(
                key:_formKey,
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {
                        this.setState(() {
                          name = value;
                        });
                      },
                      validator:(value){
                        if(value!.isEmpty){
                          return "Username Cannot be empty";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "Enter username", labelText: "UserName"),
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Enter password", labelText: "Password"),
                      validator:(value){
                        if(value!.isEmpty){
                          return "Password Cannot be empty";
                        }
                        else if(value.length<6){
                          return "Password length should be atleast 6";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    InkWell(
                      onTap: moveToHome,
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 100),
                        width: changeButton ? 50 : 150,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius: BorderRadius.circular(50)),
                        child: changeButton
                            ? Icon(Icons.done, color: Colors.white)
                            : Text(
                                "Login",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
