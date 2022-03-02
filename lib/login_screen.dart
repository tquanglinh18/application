import 'package:flutter/material.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
        constraints: const BoxConstraints.expand(),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end, //cho cot chay tu duoi len
          crossAxisAlignment:
              CrossAxisAlignment.start, // cho nhung thang con chay tu trai qua
          children: <Widget>[
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
              child: Center(
                child: Text(
                  'Login',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            ),
            const Text('Username'),
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 25),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person_outline),
                  hintText: 'Type your username',
                ),
              ),
            ),
            const Text('Password'),
            const Padding(
                padding: EdgeInsets.fromLTRB(0, 5, 0, 5),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      hintText: 'Type your password'),
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        onForgotPasswordClicked();
                      },
                      highlightColor: Colors.white,
                      child: const Text('Forgot password?',
                          style: TextStyle(color: Colors.blue, fontSize: 15),
                          textAlign: TextAlign.right),
                    )),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
              child: Center(
                  child: Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.pinkAccent,
                        Colors.blue,
                      ],
                    )),
                child: RaisedButton(
                  onPressed: onLoginClicked,
                  shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30))),
                  color: Colors.transparent,
                  child: const Text(
                    'LOGIN',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              )),
            ),
            const SizedBox(
              width: double.infinity,
              child: Text('Or Sign Up Using',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 15)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 100),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 60,
                    onPressed: onLoginWithFacebookClicked,
                    icon: const Icon(Icons.facebook),
                    color: Colors.blue,
                  ),
                  IconButton(
                    iconSize: 60,
                    onPressed: onLoginWithTwitterClicked,
                    icon: const Icon(Icons.water_damage),
                    color: Colors.green,
                  ),
                  IconButton(
                    iconSize: 60,
                    onPressed: onLoginWithGoogleClicked,
                    icon: const Icon(Icons.tag_faces_rounded),
                    color: Colors.red,
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: const Text('Or Sign Up Using',
                  textAlign: TextAlign.center, style: TextStyle(fontSize: 15)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                  child: Material(
                    child: InkWell(
                        onTap: () {
                          onSingUpClicked();
                        },
                        child: const Text('SIGN UP',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.blue,
                            ))),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void onLoginClicked() {
    Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => const HomePage(),
    ));
  }

  void onLoginWithFacebookClicked() {}
  void onLoginWithTwitterClicked() {}
  void onLoginWithGoogleClicked() {}
  void onSingUpClicked() {}
  void onForgotPasswordClicked() {}
}
