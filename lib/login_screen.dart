import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:myfoooooood/styles/button.dart';
//import 'package:myfoooooood/styles/typo.dart';

class LoginScreen extends StatelessWidget
{
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  final ButtonStyle buttonPrimary= ElevatedButton.styleFrom(

    maximumSize:Size(327, 50),
    primary:Colors.orange,
    elevation: 0,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20),
      )
    ),



  );


  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        // عشان اعمل شادو تحت appbar
        elevation: 10.5,
      backgroundColor:Colors.blue,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        //عشان ميحصلش ايررور ف الابعاد الطول 
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'login',
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),

                TextFormField(
                  //عشان اخد اللي جواه
                  controller: emailController,

                  //عشان علامة @ تظهر اول لما اكتب الاميل
                keyboardType: TextInputType.emailAddress,
                  //  هياخد اللي انا هدخله ف الايميل بعد ما ادوس ع زرار السبمت
                  onFieldSubmitted: (value){
                  print(value);
                  },
                  //  هياخد اللي انا هدخله ف الايميل من قبل  ما ادوس ع زرار السبمت

                  onChanged:(valuee){
                  print(valuee);
                  } ,

                  decoration: InputDecoration(
                    //hintText: 'Email',
                    labelText: 'Email Adress',
                    border:OutlineInputBorder(),
                    prefixIcon: Icon(
                      Icons.email,
                    )
                  ),

                ),
                SizedBox(
                  height: 20.0,
                ),

               TextFormField(
                  //عشان اخد اللي جواه
                  controller: passwordController,
                  //عشان علامة @ تظهر اول لما اكتب الاميل
                  keyboardType: TextInputType.visiblePassword,
                  // عشان وانا بكتب الباسورد يتحول لنجوم عشان ميبقاش ظاهر
                  obscureText:true ,
                  //  هياخد اللي انا هدخله ف الايميل بعد ما ادوس ع زرار السبمت
                  onFieldSubmitted: (value){
                    print(value);
                  },
                  //  هياخد اللي انا هدخله ف الايميل من قبل  ما ادوس ع زرار السبمت

                  onChanged:(valuee){
                    print(valuee);
                  } ,

                  decoration: InputDecoration(
                    //hintText: 'Email',
                      labelText: 'password',
                      border:OutlineInputBorder(),
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),


                  ),

                ),
                SizedBox(
                  height: 20.0,
                ),


                Container(
                  color: Colors.blue,
                  width: double.infinity,
                  height: 50.0,
                  child: MaterialButton(onPressed: (){
                    print(emailController.text);
                    print(passwordController.text);

                  },
                  child: Text(
                    'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,

                  ),),),
                ),
                SizedBox(
                  height: 10.0,
                ),

            SizedBox(
              height: 50,
              width: 350,
              child:ElevatedButton(style: buttonPrimary
                    ,onPressed: (){}, child: const Text("Get start now",
                style: TextStyle(
                  fontSize: 20,
                ),),

                  ),
            ),


                SizedBox(
                  height: 10.0,
                ),

                   SizedBox(
                     height: 50,
                     width: 350,
                     child:ElevatedButton(onPressed: (){},
                       style: ButtonStyle(
                           shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                               borderRadius:BorderRadius.circular(20)
                           ),
                           )
                       ),
                       child: Text(
                         "click",
                         style: TextStyle(
                           fontSize: 30,
                          // backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                         ),
                       ),
                     ),


                   ),









                  SizedBox(
                    height: 10.0,
                  ),




                        Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                           Text('Don\'t have an account? ',),
                            TextButton(onPressed: (){}, child: Text('Register Now',),),
                         ],
                        ),
                




              ],
            ),
          ),
        ),
      ),

    );
  }
}