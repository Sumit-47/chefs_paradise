import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LogInPage extends StatefulWidget {
  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  late String _email;
  late String _password;
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Form(
          child: Padding(
            padding: const EdgeInsets.all(45.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Welcome\nBack...",
                  style: TextStyle(
                    letterSpacing: 1.0,
                    fontSize: 36.0,
                    fontFamily: "Times New Roman",
                    fontStyle: FontStyle.italic,
                    color: Color(0xFFCB7E1F),
                  ),
                ),
                SizedBox(
                  height: 59.0,
                ),
                TextField(
                  onChanged: (String value){
                    _email = value;
                    print(_email);
                  },
                  autocorrect: false,
                  autofocus: false,
                  cursorColor: Color(0xFFCB7E1F),
                  controller: _controller1,
                  decoration: InputDecoration(
                    hintText: "Email",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFCB7E1F),
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFCB7E1F),
                        width: 2.0,
                      ),
                    ),
                    hintStyle: TextStyle(
                      color: Color(0x7FCB7E1F),
                      letterSpacing: 1.0,
                      fontSize: 18.0,
                      fontFamily: "Times New Roman",
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(20),
                    FilteringTextInputFormatter.allow(RegExp("[a-z0-9.@]")),
                  ],
                  keyboardType: TextInputType.emailAddress,
                  // maxLength: 20,
                  // maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  maxLines: 1,
                  minLines: 1,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    letterSpacing: 1.0,
                    fontSize: 18.0,
                    fontFamily: "Times New Roman",
                    fontStyle: FontStyle.normal,
                    color: Color(0xFFCB7E1F),
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextField(
                  onChanged: (String value){
                    _password = value;
                    print(_password);
                  },
                  autocorrect: false,
                  autofocus: false,
                  cursorColor: Color(0xFFCB7E1F),
                  controller: _controller2,
                  decoration: InputDecoration(
                    hintText: "Password",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFCB7E1F),
                        width: 2.0,
                      ),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: Color(0xFFCB7E1F),
                        width: 2.0,
                      ),
                    ),
                    hintStyle: TextStyle(
                      color: Color(0x7FCB7E1F),
                      letterSpacing: 1.0,
                      fontSize: 18.0,
                      fontFamily: "Times New Roman",
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(20),
                    FilteringTextInputFormatter.allow(RegExp("[A-Za-z0-9@]")),
                  ],
                  keyboardType: TextInputType.visiblePassword,
                  // maxLength: 20,
                  // maxLengthEnforcement: MaxLengthEnforcement.enforced,
                  maxLines: 1,
                  minLines: 1,
                  obscureText: true,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    letterSpacing: 1.0,
                    fontSize: 18.0,
                    fontFamily: "Times New Roman",
                    fontStyle: FontStyle.normal,
                    color: Color(0xFFCB7E1F),
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: TextButton(
                    style: ButtonStyle(
                      padding: MaterialStateProperty.resolveWith((states) => EdgeInsets.fromLTRB(45.0, 8.0, 45.0, 8.0)),
                      backgroundColor: MaterialStateProperty.resolveWith((states) => Color(0xFFFFFFFF)),
                      foregroundColor: MaterialStateProperty.resolveWith((states) => Color(0xFFCB7E1F)),
                      overlayColor: MaterialStateProperty.resolveWith((states) => Color(0x3FCB7E1F)),
                    ),
                    onPressed: (){},
                    child: Text("Sign In"),
                  ),
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Forgotten your Login details?",
                        style: TextStyle(
                          letterSpacing: 1.0,
                          fontSize:9.5,
                          fontFamily: "Times New Roman",
                          fontStyle: FontStyle.italic,
                          color: Color(0xFFCB7E1F),
                        ),
                      ),
                      TextButton(
                        onPressed: (){},
                        child: Text(
                          "Get help with Logging in.",
                          style: TextStyle(
                            letterSpacing: 1.0,
                            fontSize: 9.5,
                            fontFamily: "Times New Roman",
                            fontStyle: FontStyle.italic,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Divider(
                          endIndent: 10.0,
                          height: 7.5,
                          indent: 0.0,
                          thickness: 2.0,
                          color: Color(0xFFCB7E1F),
                        ),
                      ),
                      Text(
                        "OR",
                        style: TextStyle(
                          letterSpacing: 1.0,
                          fontSize: 12.0,
                          fontFamily: "Times New Roman",
                          fontStyle: FontStyle.italic,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          endIndent: 0.0,
                          height: 7.5,
                          indent: 10.0,
                          thickness: 2.0,
                          color: Color(0xFFCB7E1F),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: TextButton(
                    onPressed: (){
                      print("Signing in with google");
                    },
                    style: ButtonStyle(
                        overlayColor: MaterialStateProperty.resolveWith((states) => Colors.transparent)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Image.asset(
                          "images/google-logo.png",
                          height: 19,
                          width: 19,
                        ),
                        SizedBox(
                          width: 10.0,
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Log In with ",
                            style: TextStyle(
                              letterSpacing: 1.0,
                              fontSize: 12.0,
                              fontFamily: "Times New Roman",
                              fontStyle: FontStyle.italic,
                              color: Color(0xFFCB7E1F),
                            ),
                            children: const <TextSpan>[
                              TextSpan(
                                  text: "G",
                                  style: TextStyle(
                                    color: Color(0xFF4285F4),
                                  )
                              ),
                              TextSpan(
                                  text: "o",
                                  style: TextStyle(
                                    color: Color(0xFFDB4437),
                                  )
                              ),
                              TextSpan(
                                  text: "o",
                                  style: TextStyle(
                                    color: Color(0xFFF4B400),
                                  )
                              ),
                              TextSpan(
                                  text: "g",
                                  style: TextStyle(
                                    color: Color(0xFF4285F4),
                                  )
                              ),
                              TextSpan(
                                  text: "l",
                                  style: TextStyle(
                                    color: Color(0xFF0F9D58),
                                  )
                              ),
                              TextSpan(
                                  text: "e",
                                  style: TextStyle(
                                    color: Color(0xFFDB4437),
                                  )
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Divider(
                          endIndent: 10.0,
                          height: 7.5,
                          indent: 0.0,
                          thickness: 2.0,
                          color: Color(0xFFCB7E1F),
                        ),
                      ),
                      Text(
                        "OR",
                        style: TextStyle(
                          letterSpacing: 1.0,
                          fontSize: 12.0,
                          fontFamily: "Times New Roman",
                          fontStyle: FontStyle.italic,
                          color: Color(0xFFFFFFFF),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          endIndent: 0.0,
                          height: 7.5,
                          indent: 10.0,
                          thickness: 2.0,
                          color: Color(0xFFCB7E1F),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Don't have an account?",
                        style: TextStyle(
                          letterSpacing: 1.0,
                          fontSize:9.5,
                          fontFamily: "Times New Roman",
                          fontStyle: FontStyle.italic,
                          color: Color(0xFFCB7E1F),
                        ),
                      ),
                      TextButton(
                        onPressed: (){},
                        child: Text(
                          "Sign up.",
                          style: TextStyle(
                            letterSpacing: 1.0,
                            fontSize: 9.5,
                            fontFamily: "Times New Roman",
                            fontStyle: FontStyle.italic,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomInset: false,
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0.0,0.7,1.0],
          colors: <Color>[Color(0xFFFFFFFF),Color(0xFFE8C59A),Color(0xFFCB7E1F)],
        ),
      ),
    );
  }
}