import 'package:flutter/material.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
 _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/img.png'),fit: BoxFit.cover
        )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 65,top: 130),
              child: Container(
                child: Text('Login',style: TextStyle(
                  color: Colors.white,
                  fontSize: 70,
                ),),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                child: Padding(
                  padding:EdgeInsets.only(
                      top: MediaQuery.of(context).size.height*0.5,
                  right: 35,
                  left: 35),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
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
                            fillColor: Colors.grey.shade100,
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(onPressed: (){
                            Navigator.pushNamed(context, 'register');
                          }, child:Text(
                            'Sign Up',style: TextStyle(
                            decoration: TextDecoration.underline,
                              fontSize: 18,
                              color: Color(0xff4c505b)
                          ),
                          ) ),
                          TextButton(onPressed: (){}, child:Text(
                            'Forget Password',style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 18,
                              color: Color(0xff4c505b)
                          ),
                          ) )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );

    // );
  }
}
