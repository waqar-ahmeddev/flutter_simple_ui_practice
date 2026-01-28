import'package:flutter/material.dart';
import 'screen.dart';
class SplashScreen extends StatefulWidget {
   const SplashScreen({super.key});
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
 var String = "";
 bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
          children: [
            Image.asset('assets/login.png',fit: BoxFit.cover,),
            SizedBox(height: 15,),
            Text('Welcome Hoorain ',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 20.0),
              child: Column(
                children: [
                    TextFormField(decoration: InputDecoration(
                hintText: 'username',hintStyle: TextStyle(fontSize: 10,),
                label: Text('Enter username',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
              ),
              ),
                    ),
                TextFormField(
                     obscureText: true,
                     decoration: InputDecoration(
                hintText: 'password',hintStyle: TextStyle(fontSize: 10,),
                label: Text('Enter password',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
              ),
              )
                )
                )
                ],
              ),
            ),
            SizedBox(height: 20),
               SizedBox(height: 20),
   InkWell(
    onTap: () {
  setState(() {
    changeButton = true; // Icon show hoga
  });

  // 500 milliseconds (0.5 sec) wait kar ke next screen
  Future.delayed(Duration(milliseconds: 500), () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Screen()),
    );
  });
},

  // onTap: () {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(builder: (context) => Screen()),
  // );
  //   setState(() {
  //     changeButton = true;
  //   });
  // },
  // onTap: () {
  //   setState(() {
  //     changeButton = true;
  //   });
  // },
  child: AnimatedContainer(
    duration: Duration(milliseconds: 300),
    child: Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Center(
        child: changeButton ? Icon(Icons.verified,color: Colors.white,) : Text(
         'Login',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
      ),
    ),
  ),
),
//   ElevatedButton( 
          //     onPressed: (){
          //       Navigator.push(context, MaterialPageRoute(builder: (context) => Screen())); }, 
          //       style: ElevatedButton.styleFrom( fixedSize: Size(200, 60), backgroundColor: Colors.purple,foregroundColor: Colors.white 
          // ), child: Text('Login', style: TextStyle(fontSize: 19),),
          //   )
        ]
          ),
        ),
            
    );
  }
   
}