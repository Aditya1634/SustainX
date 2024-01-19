
import 'package:flutter/material.dart';
import 'package:sustain_x/pages/add_location.dart';

//import 'home.dart';

class Register extends StatelessWidget {
  const Register({Key? key, required this.index}) : super(key: key);

  final int index;

  //TextEditingController myController()=> _ToDoPageState();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // title: const Padding(
          //   padding: EdgeInsets.fromLTRB(10.0, 10.0, 55.0, 10.0),
          //   child: Text('Add Location', style: TextStyle(fontSize: 28,
          //       fontFamily: 'Poppins',
          //       fontWeight: FontWeight.w500,
          //       color: Colors.green),),
          //
          // ),
        ),
        body:
        //const Padding(
        //   padding: EdgeInsets.all(30.0),
        //   child: Text('Add Location',style: TextStyle(fontSize: 40,fontFamily: 'Poppins',fontWeight: FontWeight.w500,color: Colors.green),),
        // )
        Center(
            child: SingleChildScrollView(
                child: Container(
                    width: 380,
                    height: 700,
                    child: Column(

                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [

                        Stack(
                          children: [
                            // Background text with stroke
                            Text(
                              'Register',
                              style: TextStyle(
                                fontSize: 38,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                foreground: Paint()
                                  ..style = PaintingStyle.stroke
                                  ..strokeWidth = 2
                                  ..color = Colors.black,
                              ),
                            ),
                            // Foreground text
                            Text(
                              'Register',
                              style: TextStyle(
                                fontSize: 38,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w700,
                                color: Color(0xFF1BE417),
                              ),
                            ),

                          ],
                        ),



                        // Container(height: 30,),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                          child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(21),
                                  borderSide: BorderSide(
                                      color: Colors.green
                                  )
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(21),
                                  borderSide: BorderSide(
                                      color: Colors.black
                                  )

                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(21),
                                  borderSide: BorderSide(
                                      color: Colors.black
                                  )

                              ),

                              labelText: "Email",
                              hintText: 'Enter your email',

                            ),
                          ),
                        ),

                        // Container(height: 20,),



                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                          child: TextField(
                            obscureText: true,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(21),
                                  borderSide: BorderSide(
                                      color: Colors.green
                                  )
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(21),
                                  borderSide: BorderSide(
                                      color: Colors.black
                                  )

                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(21),
                                  borderSide: BorderSide(
                                      color: Colors.black
                                  )
                              ),
                              labelText: "Password",
                              hintText: 'Enter your password',
                              suffixIcon: IconButton(
                                icon: Icon(Icons.remove_red_eye_outlined),
                                onPressed: (){

                                },
                              )
                              //hoverColor: Colors.green,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                          child: TextField(
                            obscureText: true,
                            obscuringCharacter: '*',
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(21),
                                  borderSide: BorderSide(
                                      color: Colors.green
                                  )
                              ),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(21),
                                  borderSide: BorderSide(
                                      color: Colors.black
                                  )

                              ),
                              enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(21),
                                  borderSide: BorderSide(
                                      color: Colors.black
                                  )
                              ),
                              labelText: "Confirm Password",
                              hintText: 'Enter your confirm password',
                                suffixIcon: IconButton(
                                  icon: Icon(Icons.remove_red_eye_outlined),
                                  onPressed: (){

                                  },
                                )

                              //hoverColor: Colors.green,
                            ),
                          ),
                        ),
                       Container(
                         width: 380,
                         height: 95,
                         child: Padding(
                              padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 0.0),
                              child: ElevatedButton(

                                style: ElevatedButton.styleFrom(

                                  primary: Colors.orange[300], // Background color
                                  onPrimary: Colors.black, // Text color
                                  side: BorderSide(color: Colors.black), // Border color
                                ),
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => Addlocation(index: 1,)),
                                  );
                                },
                                //},
                                child:Text('Next', style: TextStyle(fontSize: 23,
                                        fontFamily: 'Poppins',
                                         fontWeight: FontWeight.w300,
                                        ),),
                              ),
                         ),
                       ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(128.0, 30.0, 0.0, 0.0),
                          child: Text('Or continue with', style: TextStyle(fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              color: Colors.black),
                          ),
                        ),

                        Container(
                          width: 380,
                          height: 85,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0.0, 30.0, 0.0, 0.0),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: Colors.orange[300], // Background color
                                onPrimary: Colors.black, // Text color
                                side: BorderSide(color: Colors.black), // Border color
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => Addlocation(index: 1,)),
                                );
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10.0),
                                    child: Image.asset(
                                      'assets/images/google.png', // Replace with your Google logo asset
                                      width: 30, // Adjust the width as needed
                                      height: 30, // Adjust the height as needed
                                    ),
                                  ),
                                  Text(
                                    'Sign in with Google',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),






                      ],
                    ))))
    );

  }
}