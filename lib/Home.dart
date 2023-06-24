// TODO Implement this library.
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:udemy/page/Chat.dart';
import 'package:udemy/page/DashBoard.dart';
import 'package:udemy/page/Profile.dart';
import 'package:udemy/page/Setting.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final items=const [
  Icon(Icons.home,
  color: Colors.black,),
  Icon(Icons.favorite,
  color: Colors.black,),
  Icon(Icons.settings,
  color: Colors.black,),
  ];
  int index =1;

 /* int currentTab = 0;
  final List<Widget>screens=[
    DashBoard(),
    Chat(),
    Profile(),
    Setting(),

  ];*/

  //final PageStorageBucket bucket = PageStorageBucket();
  //Widget currentScreen = DashBoard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,


        bottomNavigationBar:CurvedNavigationBar(
          items:items,
          index: index,
          backgroundColor: Colors.purple,
          color: Colors.purple.shade50,
          animationDuration: Duration(microseconds: 500),
          onTap:(selectedIndex){
            setState(() {
              index=selectedIndex;
            });
          },

          height: 70,

          /*items:const [
      Icon(Icons.home,
      color: Colors.white,),
      Icon(Icons.favorite,
        color: Colors.white,),
      Icon(Icons.settings,
        color: Colors.white,),
       ],*/
        ),

      body: Container(
        color: Colors.blue,
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child:getSelectWidget(index:index),

      ),


      /*body:PageStorage(
        bucket: bucket,
        child: currentScreen,

        
      ),*/


      /*floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.access_time ),

      ),



      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,*/

      /*bottomNavigationBar: BottomAppBar(
        shape:CircularNotchedRectangle(),
        notchMargin: 10,
          child: Container(
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentScreen=DashBoard();
                          currentTab=0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.dashboard,
                            color: currentTab==0? Colors.blue : Colors.grey,
                          ),

                          Text("DashBoard",
                          style: TextStyle(
                            color: currentTab==0? Colors.blue : Colors.grey,

                          ),)
                        ],
                      ),

                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentScreen=Chat();
                          currentTab=1;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chat,
                            color: currentTab==1? Colors.blue : Colors.grey,
                          ),

                          Text("Chat",
                            style: TextStyle(
                              color: currentTab==1? Colors.blue : Colors.grey,

                            ),)
                        ],
                      ),

                    ),

                  ],
                ),
                // Right Tab Bar icons
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentScreen=Profile();
                          currentTab=2;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.dashboard,
                            color: currentTab==2? Colors.blue : Colors.grey,
                          ),

                          Text("profile",
                            style: TextStyle(
                              color: currentTab==2? Colors.blue : Colors.grey,

                            ),)
                        ],
                      ),

                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: (){
                        setState(() {
                          currentScreen=Setting();
                          currentTab=3;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chat,
                            color: currentTab==3? Colors.blue : Colors.grey,
                          ),

                          Text("setting",
                            style: TextStyle(
                              color: currentTab==3? Colors.blue : Colors.grey,

                            ),)
                        ],
                      ),

                    ),

                  ],
                ),
              ],
            ),
          ),
      ),*/


    );

  }



}

 Widget getSelectWidget({required int index}) {
  Widget widget ;
  switch(index){
    case 0:
      widget= const Chat();
      break;

    case 1:
      widget= const DashBoard();
      break;

     default:
      widget= const Profile();
      break;

  }
  return widget ;
}

