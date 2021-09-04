import 'package:flutter/material.dart';
import 'package:login_signup/signup.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LogIn extends StatefulWidget {
  static const routeName = 'log_in';

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final email = TextEditingController();

  final pass = TextEditingController();
  bool _passwordVisible = false;

  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }

  void selectedSignUp(BuildContext cx) {
    Navigator.of(cx).pushNamed(SignUp.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        SignUp.routeName: (context) => SignUp(),
        LogIn.routeName: (context) => LogIn(),
      },
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(10),
          color: Colors.white,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  child: ClipRRect(
                    child: Image.asset(
                      "images/sign.png",
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Container(
                  child: Text(
                    "Welcome back!",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
                Container(
                  child: Text(
                    "Log in to your existant account of Q Allure",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 14,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.perm_identity),
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
                    controller: email,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    obscureText: !_passwordVisible,
                    decoration: InputDecoration(
                      hintText: "Password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(_passwordVisible
                            ? Icons.visibility
                            : Icons.visibility_off),
                        onPressed: () {
                          setState(() {
                            _passwordVisible = !_passwordVisible;
                          });
                        },
                      ),
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
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(210, 8, 10, 0),
                  child: Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
                Container(
                  child: RaisedButton(
                    color: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    onPressed: () {},
                    child: Text(
                      "LOG IN",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 13, horizontal: 50),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Text(
                    "Or connect using",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.6),
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton.icon(
                        onPressed: () {},
                        icon: Icon(
                          Icons.facebook,
                          size: 25,
                          color: Colors.white,
                        ),
                        label: Text("Facebook",
                            style:
                                TextStyle(color: Colors.white, fontSize: 18)),
                        color: Colors.indigo,
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      RaisedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "G",
                              style: TextStyle(
                                fontSize: 22,
                                color: Colors.white,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(width: 7,),
                            Text(
                              "Google",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                          ],
                        ),
                        color: Colors.red,
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 28),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontSize: 16,
                        ),
                      ),
                      Builder(
                        builder: (ctx) => InkWell(
                          onTap: () => selectedSignUp(ctx),
                          child: Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold,
                                fontSize: 17),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
