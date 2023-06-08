import 'dart:convert';
import 'package:flutter/material.dart';
import '../models/loginmodel.dart';
   
 
final usernameController =  TextEditingController();
final passwordController =  TextEditingController();

late Future<Login> futureLogin;
   
get http => null;

 

class login extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    final futureLogin = fetchLogin();
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 37, 13),
       appBar: AppBar(
        
        backgroundColor:Colors.amber,
        title:  const Text ("Radwatch",
          
          style:  TextStyle(
          color: Colors.white,
          fontSize: 22.0,
          
          
          ),
          textAlign: TextAlign.center,
          ),


          leading:IconButton(
            icon: const Icon(Icons.menu),
            onPressed: (){}
            ) ,

        actions: [
          IconButton(
            icon :const Icon( Icons.person),
          onPressed:() {
            
          }),
          IconButton( 
            icon :const Icon( Icons.close),
          onPressed:() async{
          
          })
       ]
       ),

 body :SizedBox( 
 width: double.infinity,
 
  child: Column(
 
  children :<Widget>[
    Container(
      color: Colors.amber,
      width: 600,
      child: const Image (image: AssetImage('assets/images/logo.png'),
                alignment: Alignment.topCenter,
                color: Colors.amber,
                height : 500,
                width : 500,
                fit:BoxFit.fill,
              ), 
    ),
    Container(
    margin: const EdgeInsets.only(top :22.0),
    alignment: Alignment.bottomCenter,
    decoration: BoxDecoration(color: Colors.amber[100],
    borderRadius: BorderRadius.circular(22)
    ),

    width: 300,
    child: const TextField(
        controller:usernameController,
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Email : ",
        prefixIcon: Icon(Icons.person)
        ),
      
    ),
    ),
    Container(
    margin: const EdgeInsets.only(top :22.0,bottom:22.0),
    alignment: Alignment.bottomCenter,
    decoration: BoxDecoration(color: Colors.amber[100],
    borderRadius: BorderRadius.circular(22)
    ),

    width: 300,
    child: const TextField(
        
        obscureText: true,
        controller: passwordController,
        decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Password : ",
        prefixIcon: Icon(Icons.lock)
        ),
    ),  
  ),
    ElevatedButton(
      
       onPressed: ()async{

       Navigator.pushNamed(context, '/radoninfo');
        }, child: null,
      
       style: ButtonStyle(
        
        alignment: Alignment.bottomCenter,
        backgroundColor: MaterialStateProperty.all(Colors.amber[100]),
        padding: MaterialStateProperty.all(const EdgeInsets.symmetric(vertical :20,horizontal:105)),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(22))),
       ),
       ),
],
        ),     
       ),
    
 );

  }
  
  Future<Login> fetchLogin() async {
  final response = await http.post(
      Uri.encodeFull('http://cash.pythonanywhere.com/user/login') as Uri,
      headers: {'Content-Type': 'application/json'},
      body: {
    "username": "example",
    "password": "example",
    "hashedData": "hash"
});

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response, then parse the JSON.
    return Login.fromJson(json.decode(response.body));
    print("User login successful");
  } else {
    // If the server did not return a 200 OK response, then throw an exception.
    throw Exception('User or Password was incorrect.');
  }
}
}