/*import 'package:flutter/material.dart';


class MedicinScreen extends StatelessWidget {
  const MedicinScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
*/
import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/constants.dart';
import 'package:flutter/material.dart';
//import '../../helpers/platform_flat_button.dart';
//import '../../screens/welcome/title_and_message.dart';

class MedicinScreen extends StatelessWidget {
  var emailController=TextEditingController();
  var passwordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    void goToHomeScreen() => Navigator.pushReplacementNamed(context, "/home");

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: deviceHeight * 0.04,
            ),
            Image.asset(

                //'https://avatars.githubusercontent.com/u/34492145?v=4',

                'assets/medicine.jpg',

                width: double.infinity, height: deviceHeight* 0.4
            ),
            SizedBox(
              height: deviceHeight * 0.05,
            ),
           // TitleAndMessage(deviceHeight),
            SizedBox(
              height: deviceHeight * 0.03,
            ),
            Container(
              height: deviceHeight * 0.09,
              width: double.infinity,
              child: Padding(
                  padding: const EdgeInsets.only(left: 35.0, right: 35.0),
                child:Container(

                  color: Colors.blue,
                  width: double.infinity,
                  height: 50.0,
                  child: MaterialButton(onPressed: (){
                    print(emailController.text);
                    print(passwordController.text);

                  },
                    child: Text(
                      'Get started now',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,

                      ),),),
                ),


                  ),
                  /*child: PlatformFlatButton(
                    handler: goToHomeScreen ,
                    color: Theme.of(context).primaryColor,
                    buttonChild: FittedBox(
                      child: Text(
                        "Get started now",
                        style: Theme.of(context)
                            .textTheme
                            .headline3
                            .copyWith(color: Colors.blue),
                      ),
                    ),
                  )*/
              //),
            ),
          ],
        ),
      ),
    );
  }
}
