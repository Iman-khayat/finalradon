import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(child:
     Scaffold(
    body: Container(
      height: double.infinity,
      width: double.infinity,
      color: const Color.fromARGB(255, 3, 37, 13),
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            
            child: Column(
              children: [
                const SizedBox(height: 35,),
                Image.asset("assets/images/logo.png",),
                ElevatedButton(onPressed:(){
                //Navigator.pushNamed(context, '/login');
                },
                child: Text(
                  "Login",
                  style: TextStyle(fontSize: 24,color:Color.fromARGB(255, 3, 37, 13)),),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.amber[100]),
                    padding:MaterialStateProperty.all(
                      EdgeInsets.symmetric(horizontal: 79,vertical: 10),
                      
                    ),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(22))),
                  ),
                ),
              
              ],
            ),
          ),
         Positioned(top:4,child: Image.asset("assets/images/top.png")),
         Positioned(bottom: 0, child: Image.asset("assets/images/buttom.png", width: 333,)),
          ],
      ),
    ),


    )
    );
  }
}