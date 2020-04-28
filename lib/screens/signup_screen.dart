import 'package:flutter/material.dart';


class SignUpPage extends StatefulWidget {
  @override
  _SignUpPage createState() => new _SignUpPage();
}

class _SignUpPage extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return new Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Container(
            width: width,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [const Color(0xFFFB7BA2), const Color(0xFFFCE043)],
                    begin: FractionalOffset.topLeft,
                    end: FractionalOffset.bottomRight,
                    stops: [0.0, 1.0],
                    tileMode: TileMode.clamp)),
            child: Column(
              children: <Widget>[
                Container(
                    child: Stack(children: <Widget>[
                  Container(
                      padding: EdgeInsets.fromLTRB(0.0, 140.0, 0.0, 0.0),
                      child: Text("Welcome",
                          style: TextStyle(
                              fontSize: 80.0, fontWeight: FontWeight.bold))),
                  Container(
                      padding: EdgeInsets.fromLTRB(5.0, 215.0, 0.0, 0.0),
                      child: Text("to Yam",
                          style: TextStyle(
                              fontSize: 80.0, fontWeight: FontWeight.bold))),
                  Container(
                      padding: EdgeInsets.fromLTRB(255.0, 215.0, 0.0, 0.0),
                      child: Text(".",
                          style: TextStyle(
                              fontSize: 80.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange[600])))
                ])),
                Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: new BorderRadius.only(
                          topLeft: const Radius.circular(15.0),
                          topRight: const Radius.circular(15.0),
                          bottomRight: const Radius.circular(15.0),
                          bottomLeft: const Radius.circular(15.0),
                        )),
                    margin: EdgeInsets.only(top: 50.0),
                    padding: EdgeInsets.only(
                        top: 20.0, left: 20.0, right: 20.0, bottom: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                            width: width * 0.7,
                            child: TextField(
                                decoration: InputDecoration(
                                    labelText: 'Email',
                                    labelStyle: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                    focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.deepOrange[600]))))),
                        SizedBox(height: 20.0),
                        Container(
                            width: width * 0.7,
                            child: TextField(
                              decoration: InputDecoration(
                                  labelText: 'Password',
                                  labelStyle: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Colors.deepOrange[600]))),
                              obscureText: true,
                            )),
                        SizedBox(height: 5.0),
                        Container(
                            width: width * 0.7,
                            alignment: Alignment(1.0, 0.0),
                            padding: EdgeInsets.only(top: 15.0, left: 20.0),
                            child: InkWell(
                              child: Text('Forgot Password',
                                  style: TextStyle(
                                      color: Colors.deepOrange[600],
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Montserrat',
                                      decoration: TextDecoration.underline)),
                            )),
                        SizedBox(height: 40.0),
                        Container(
                            height: 40.0,
                            width: width * 0.7,
                            child: Material(
                                borderRadius: BorderRadius.circular(20.0),
                                shadowColor: Colors.deepOrange[400],
                                color: Colors.deepOrange[600],
                                elevation: 7.0,
                                child: GestureDetector(
                                    onTap: () {},
                                    child: Center(
                                        child: Text('Login',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Montserrat')))))),
                        SizedBox(height: 15.0),
                        Container(
                            height: 40.0,
                            width: width * 0.7,
                            child: Material(
                                borderRadius: BorderRadius.circular(20.0),
                                shadowColor: Colors.grey,
                                color: Colors.white,
                                elevation: 7.0,
                                child: GestureDetector(
                                    onTap: () {},
                                    child: Center(
                                        child: Text('Signup',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'Montserrat'))))))
                      ],
                    ))
              ],
            )));
  }
}
