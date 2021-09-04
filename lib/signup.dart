import 'package:flutter/material.dart';

import 'login.dart';

class SignUp extends StatefulWidget {
  static const routeName = 'sign_up';

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _passwordVisible = false;

  @override
  void initState(){
    super.initState();
    _passwordVisible = false;
  }

  Widget buildTextField(BuildContext context, title, icon) {
    return Container(
      child: TextField(
        decoration: InputDecoration(
          hintText: title,
          prefixIcon: Icon(icon),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.blue, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Colors.blue, width: 2),
          ),
          focusColor: Colors.blue,
        ),
      ),
    );
  }

  Widget buildPassword(BuildContext context, title, icon,icon2) {
    return Container(
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: !_passwordVisible,
        decoration: InputDecoration(
          hintText: title,
          prefixIcon: Icon(icon),

          suffixIcon: IconButton(icon: Icon(icon2), onPressed: () { setState(() {
            _passwordVisible = !_passwordVisible;
          }); },),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(color: Colors.blue, width: 2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(color: Colors.blue, width: 2),
          ),
          focusColor: Colors.blue,

        ),
      ),
    );
  }

  void selectedLogIn(BuildContext cx) {
    Navigator.of(cx).pushNamed(LogIn.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  IconButton(onPressed: (){Navigator.of(context).pop();}, icon: Icon(Icons.arrow_back)),
                ],
              ),
              Text(
                "Let's Get Started!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Create an account to Q Allure to get all features",
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
              SizedBox(
                height: 15,
              ),
              buildTextField(context, "Name", Icons.perm_identity),
              SizedBox(
                height: 15,
              ),
              buildTextField(context, "Email", Icons.mail),
              SizedBox(
                height: 15,
              ),
              buildTextField(context, "Phone", Icons.phone_android),
              SizedBox(
                height: 15,
              ),
              buildPassword(context, "Password", Icons.lock,_passwordVisible?Icons.visibility:Icons.visibility_off),
              SizedBox(
                height: 15,
              ),
              buildPassword(context, "Confirm Password", Icons.lock,_passwordVisible?Icons.visibility:Icons.visibility_off),
              SizedBox(
                height: 15,
              ),
              Container(
                child: RaisedButton(
                  color: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  onPressed: () {},
                  child: Text(
                    "CREATE",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  InkWell(
                    onTap: () => selectedLogIn(context),
                    child: Text(
                      "Login here",
                      style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 17),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
