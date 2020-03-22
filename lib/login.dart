
import 'package:auth/signin.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image.asset("assets/leaves.jpg",fit: BoxFit.fill,),
            Container(
              // height: MediaQuery.of(context).size.height,
              // width: MediaQuery.of(context).size.width,
              color: Colors.black54,
            ),

            Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    GestureDetector(
                      onTap: ()=>setState(() {
                        Navigator.push(
                          context,
                            MaterialPageRoute(builder: (context) => SignIn()),
                          );
                      }),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 18.0
                        ),
                      ),
                    )
                  ],
                ),
                Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                     TextField(
                          decoration: InputDecoration(
                            hintText: "Email Or UserName",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)
                            )
                          ),
                        ),
                      
                      SizedBox(height: 20.0),

                      TextField(
                          //controller: ,
                          decoration: InputDecoration(
                            hintText: "password",
                            // fillColor: Colors.white,
                            // focusColor: Colors.red,
                            // hoverColor: Colors.red,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)
                            )
                            
                          ),
                          
                        ),
                        SizedBox(height: 50.0,),
                        GestureDetector(
                          onTap: (){
                            print("hello there..!!!");
                          },
                                              child: Container(
                            width: 150.0,
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30.0),
                              color: Colors.redAccent
                            ),
                            child: Center(
                              child: Text(
                                "LOGIN"
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 20.0,),
                        
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
                          bottom: 10.0,
                          left: 10.0,
                                                child: GestureDetector(
                            onTap: null,
                            child: Text("Forget Password",
                            style: TextStyle(
                              decoration: TextDecoration.underline
                            ),),
                          ),
                        )
        ],     
        ),
      ),
    );
  }
}