import 'package:flutter/material.dart';
import 'package:flutter_assignment/ui/mainHome.dart';
import 'package:flutter_assignment/ui/signin.dart';

class LoginForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginFormState();
  }
}

class LoginFormState extends State<LoginForm> {
  final TextEditingController _user = new TextEditingController();
  final TextEditingController _password = new TextEditingController();
  final _formKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: const EdgeInsets.only(top: 50, left: 30, right: 30),
      child: Form(
        key: _formKey,
        child: ListView(
          children: <Widget>[
            Image.asset(
              "img/images.jpg",
              height: 150,
            ),
            TextFormField(
              controller: _user,
              decoration: InputDecoration(
                labelText: "User Id",
                hintText: "Plaease input you email",
                prefixIcon: Icon(Icons.person),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            TextFormField(
              controller: _password,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Plaease input you Password",
                prefixIcon: Icon(Icons.lock),
              ),
              keyboardType: TextInputType.text,
              obscureText: true,
            ),
            Builder(
              builder: (context) => RaisedButton(
                  child: Text('LOGIN'),
                  onPressed: () {
                    if (_user.text != 'admin' && _password.text != 'admin') {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text('user or password ไม่ถูกต้อง'),
                        duration: Duration(seconds: 3),
                      ));
                    } else if (_user.text.isEmpty || _password.text.isEmpty) {
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text('กรุณาระบุ user or password'),
                        duration: Duration(seconds: 3),
                      ));
                    } else {
                      Navigator.pushReplacementNamed(context, "/home");
                    }
                  }),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: ButtonTheme(
                padding: EdgeInsets.all(0),
                child: FlatButton(
                  child: Text(
                    "Register New Account",
                    style: TextStyle(fontSize: 12, color: Colors.blue),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignInForm()));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
