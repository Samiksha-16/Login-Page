import 'package:flutter/material.dart';
import 'package:untitled3/login.dart';

class MyRegister extends StatefulWidget {
  const MyRegister({Key? key}) : super(key: key);

  @override
  State<MyRegister> createState() => _MyRegisterState();
}

class _MyRegisterState extends State<MyRegister> {
  @override
  Widget build(BuildContext context) {
    // return Scaffold();
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/img_1.png'),fit: BoxFit.cover
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 65,top: 20),
              child: Container(
                child: Text('Create Account',style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                ),),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding:EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.3,
                      right: 35,
                      left: 35),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            // fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'Name',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                      SizedBox(height: 30,),

                      TextField(
                        decoration: InputDecoration(
                            // fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'Email',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                      SizedBox(height: 30,),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            // fillColor: Colors.grey.shade100,
                            filled: true,
                            hintText: 'Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)
                            )
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Sign In',style: TextStyle(fontSize: 25,fontWeight: FontWeight.w700,color: Color(0xff4c505b),),
                          ),
                          CircleAvatar(

                            radius: 20,
                            backgroundColor: Color(0xff4c505b),
                            child: IconButton(
                              color: Colors.white,
                              onPressed: (){},
                              icon: Icon(Icons.arrow_forward),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: [
                      //     TextButton(onPressed: (){
                      //       Navigator.pushNamed(context, 'register');
                      //     }, child:Text(
                      //       'Sign Up',style: TextStyle(
                      //         decoration: TextDecoration.underline,
                      //         fontSize: 18,
                      //         color: Color(0xff4c505b)
                      //     ),
                      //     ) ),
                      //     TextButton(onPressed: (){}, child:Text(
                      //       'Forget Password',style: TextStyle(
                      //         decoration: TextDecoration.underline,
                      //         fontSize: 18,
                      //         color: Color(0xff4c505b)
                      //     ),
                      //     ) )
                      //   ],
                      // )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );

  }
}
