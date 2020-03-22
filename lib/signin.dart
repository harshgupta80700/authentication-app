import 'package:auth/login.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
 DateTime _dateTime;
 
 TextEditingController dob = TextEditingController();
 TextEditingController age = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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

      SingleChildScrollView(
                  child: Padding(
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
                          MaterialPageRoute(builder: (context) => Login()),
                        );
                    }),
                    child: Text(
                      "Login",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontSize: 18.0
                      ),
                    ),
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height/8,),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                   TextField(
                     //controller: one,
                        decoration: InputDecoration(
                          hintText: "Full Name",
                          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0)
                          )
                        ),
                      ),
                    
                    SizedBox(height: 20.0),

                    TextField(
                        //controller: ,
                        decoration: InputDecoration(
                          hintText: "Email id",
                          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0)
                          )
                          
                        ),
                        
                      ),
                      SizedBox(height: 20.0),

                    TextField(
                        //controller: ,
                        decoration: InputDecoration(
                          hintText: "Username",
                          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0)
                          )
                          
                        ),
                        
                      ),
                      SizedBox(height: 20.0),

                    TextField(
                        //controller: ,
                        decoration: InputDecoration(
                          hintText: "Password",
                          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0)
                          )
                          
                        ),
                        obscureText: true,
                      ),
                      SizedBox(height: 20.0),

                    TextFormField(
                        //controller: ,
                        decoration: InputDecoration(
                          hintText: "Confirm Password",
                          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0)
                          )
                          
                        ),
                        obscureText: true,
                        
                      ),
                      SizedBox(height: 20.0),
                      TextField(
                        //controller: ,
                        decoration: InputDecoration(
                          hintText: "Phone number",
                         border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0)
                          )
                          
                        ),
                        keyboardType: TextInputType.number,
                      ),

                      SizedBox(height: 20.0),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: TextField(
                              controller: dob,
                              decoration: InputDecoration(
                              hintText: "Date of Birth",
                              suffixIcon: IconButton(icon: Icon(
                          Icons.calendar_today,
                          color: Colors.white54,
                          size: 25.0,
                        ), onPressed: (){

                          showDatePicker(context:context, 
                          initialDate: DateTime(2005), 
                          firstDate: DateTime(1995), 
                          lastDate: DateTime(2006),
                          ).then((date){
                          setState(() {
                            _dateTime=date;
                            dob.text=_dateTime==null?'':_dateTime.toString();
                            age.text =(DateTime.now().year-_dateTime.year).toString();

                          });
                        });}),
                              border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)
                              )
                              
                              ),
                              keyboardType: TextInputType.number,
                      ),
                            ),
                            
                      SizedBox(width:20.0),
                      Expanded(
                              child: TextField(
                              controller: age,
                              decoration: InputDecoration(
                              hintText: "Age",
                              border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)
                              )
                              
                              ),
                              keyboardType: TextInputType.number,
                      )),
                          ],
                        ),
                     //SizedBox(width: 5.0,),
                     
                   


                      SizedBox(height: 50.0,),
                      GestureDetector(
                        onTap:()=> setState(() {
                          
                        }),
                              child: Container(
                          width: 150.0,
                          height: 50.0,
                          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.redAccent
                          ),
                          child: Center(
            child: Text(
              "SIGN UP"
            ),
                          ),
                        ),
                      ),
                      SizedBox(height:20.0),
                      
                  ],
              )
          ],
        ),
    ),
                  
      ),
    ],
           
        ),
      );
  }
}