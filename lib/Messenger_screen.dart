import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/constants.dart';

class MessengerScreen extends StatelessWidget
{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(

        backgroundColor: Colors.white,
        //عشان الغي الظل بين البار و باقي الشاشه
        elevation: 0.0,
        titleSpacing:20.0 ,
        title: Row(
          children: [
            IconButton(onPressed: (){
              print('menu');
            }, icon: Icon(
              Icons.menu,
              color: Colors.black,
            )),

            // circle avatar
            /*CircleAvatar(
              radius: 20.0,
              backgroundImage:NetworkImage('https://avatars.githubusercontent.com/u/34492145?v=4'),

            ),*/
            SizedBox(
              width: 15.0,
            ),
            Text('Chats',
            style: TextStyle(
              color: Colors.black,
            ),),

          ],
        ),
        actions: [
          IconButton(onPressed: (){
            print('camera open');
          }, icon: CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.black,
            child: Icon(
              Icons.camera_alt_rounded,
              color: Colors.white,
              size: 16.0,
            ),
          )),

          IconButton(onPressed: (){
            print('pen');
          }, icon: CircleAvatar(
            radius: 20.0,
            backgroundColor: Colors.black,
            child: Icon(
              Icons.edit,
              color: Colors.white,
              size: 16.0,
            ),
          )),
        ],


      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration:BoxDecoration(
                borderRadius: BorderRadius.circular(7.0,
                ),
                color: Colors.grey[300],


              ) ,
              padding:EdgeInsets.all(7.0),
              child: Row(
                children: [
                  Icon(Icons.search,),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text('Search'),
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              children: [
                Stack(
                  alignment: AlignmentDirectional.bottomEnd,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/34492145?v=4'),
                      radius: 25.0,


                    ),

                    Padding(
                      padding: const EdgeInsetsDirectional.only(
                        bottom:3.0 ,
                        end:3.0 ,
                      ),
                      child: CircleAvatar(
                        radius: 7.0,
                        backgroundColor: Colors.green,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text('suhaila Ahmed',),

              ],
            )
          ],
        ),
      ),



    );
  }
}

