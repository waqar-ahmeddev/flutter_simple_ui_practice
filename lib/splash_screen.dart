import'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
   const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
        children: [
          Image.asset('assets/login.png',fit: BoxFit.cover,),
          SizedBox(height: 15,),
          Text('Welcome Hoorain',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
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
        ElevatedButton(
  onPressed: () {
    print('Hello world');
  },
  style: ElevatedButton.styleFrom(
    padding: EdgeInsets.symmetric(
      horizontal: 40, // width control
      vertical: 18,),   // height control
    backgroundColor: Colors.blue, // button ka color
    foregroundColor: Colors.white, // text ka color
     shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(20), // rounded corners
  ),
  ),
  child: Text('Login', style: TextStyle(fontSize: 18),),
)

      
          
        ]
        ),
            
    );
  }
   
}