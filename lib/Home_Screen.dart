import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
   {
     return Scaffold(
       appBar: AppBar(
         // عشان اعمل شادو تحت appbar
         elevation: 30.5,
         backgroundColor: Colors.teal,
         leading: Icon(
           Icons.menu,
         ),
         title: Text(
           'udemy app'  ,  ),
         actions: [
           // IconButton => عشان لما اضغط ع ايقونه يحصل فعل
           IconButton(
               icon: Icon(
             Icons.notification_important,

           ),
               onPressed: ()
               {
             print('notification click 667712');
               },
           ),
           IconButton(
               onPressed: (){
                 print("search pesss");
                 },
               icon: Icon(
                 Icons.search,
               )),
           IconButton(
               icon: Text("data com",),
           onPressed: (){print("text pressssss");}),

         ],
       ),

       /*body:SafeArea(

           child: Text("first project",)) ,*/
       body:Column(
         children: [
           Padding(
             padding: const EdgeInsets.all(50.0),
             child: Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadiusDirectional.only(
                   bottomEnd: Radius.circular(20.0),
                   topStart: Radius.circular(30.0),
                 )//circular(20.0,),

               ),
               clipBehavior:Clip.antiAliasWithSaveLayer,
               child: Stack(
                 alignment: Alignment.bottomCenter,
                 children:[
                   Image(
                     image: NetworkImage(
                       'https://cdn.pixabay.com/photo/2015/04/19/08/33/flower-729512__340.jpg',
                     ),
                     height: 300.0,
                     width: 300.0,
                     fit: BoxFit.cover,
                   ),
                   Container(
                     width:300,
                     color: Colors.black.withOpacity(.3),
                     padding: EdgeInsets.symmetric(
                       vertical: 10.0,
                      // horizontal: 30.0
                     ),
                     child: Text('flower',
                     textAlign: TextAlign.center,
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 30.0,
                     ),),
                   ),
                 ]
               ),
             ),
           )
         ],
       )
       /*SingleChildScrollView(
         scrollDirection:Axis.horizontal ,
         child: Row(
           //crossAxisAlignment: CrossAxisAlignment.center,
           children: [
             Text('first',
             style:TextStyle(
               color: Colors.cyan,
               fontSize: 30.0,

             ),),
             Text('second',
             style: TextStyle(
               color: Colors.brown,
               fontSize: 30.0,
             ),),
             Text('third',
             style: TextStyle(
               color: CupertinoColors.systemGreen,
               fontSize: 30.0,
             ),),
             Text('fourth',
             style: TextStyle(
               color: Colors.black87,
               fontSize:30.0,
             ),),
             Text('first',
               style:TextStyle(
                 color: Colors.cyan,
                 fontSize: 30.0,

               ),),
             Text('second',
               style: TextStyle(
                 color: Colors.brown,
                 fontSize: 30.0,
               ),),
             Text('third',
               style: TextStyle(
                 color: CupertinoColors.systemGreen,
                 fontSize: 30.0,
               ),),
             Text('fourth',
               style: TextStyle(
                 color: Colors.black87,
                 fontSize:30.0,
               ),),
             Text('first',
               style:TextStyle(
                 color: Colors.cyan,
                 fontSize: 30.0,

               ),),
             Text('second',
               style: TextStyle(
                 color: Colors.brown,
                 fontSize: 30.0,
               ),),
             Text('third',
               style: TextStyle(
                 color: CupertinoColors.systemGreen,
                 fontSize: 30.0,
               ),),
             Text('fourth',
               style: TextStyle(
                 color: Colors.black87,
                 fontSize:30.0,
               ),),
             Text('first',
               style:TextStyle(
                 color: Colors.cyan,
                 fontSize: 30.0,

               ),),
             Text('second',
               style: TextStyle(
                 color: Colors.brown,
                 fontSize: 30.0,
               ),),
             Text('third',
               style: TextStyle(
                 color: CupertinoColors.systemGreen,
                 fontSize: 30.0,
               ),),
             Text('fourth',
               style: TextStyle(
                 color: Colors.black87,
                 fontSize:30.0,
               ),),
             Text('first',
               style:TextStyle(
                 color: Colors.cyan,
                 fontSize: 30.0,

               ),),
             Text('second',
               style: TextStyle(
                 color: Colors.brown,
                 fontSize: 30.0,
               ),),
             Text('third',
               style: TextStyle(
                 color: CupertinoColors.systemGreen,
                 fontSize: 30.0,
               ),),
             Text('fourth',
               style: TextStyle(
                 color: Colors.black87,
                 fontSize:30.0,
               ),),
             Text('first',
               style:TextStyle(
                 color: Colors.cyan,
                 fontSize: 30.0,

               ),),
             Text('second',
               style: TextStyle(
                 color: Colors.brown,
                 fontSize: 30.0,
               ),),
             Text('third',
               style: TextStyle(
                 color: CupertinoColors.systemGreen,
                 fontSize: 30.0,
               ),),
             Text('fourth',
               style: TextStyle(
                 color: Colors.black87,
                 fontSize:30.0,
               ),),
             Text('first',
               style:TextStyle(
                 color: Colors.cyan,
                 fontSize: 30.0,

               ),),
             Text('second',
               style: TextStyle(
                 color: Colors.brown,
                 fontSize: 30.0,
               ),),
             Text('third',
               style: TextStyle(
                 color: CupertinoColors.systemGreen,
                 fontSize: 30.0,
               ),),
             Text('fourth',
               style: TextStyle(
                 color: Colors.black87,
                 fontSize:30.0,
               ),),
             Text('first',
               style:TextStyle(
                 color: Colors.cyan,
                 fontSize: 30.0,

               ),),
             Text('second',
               style: TextStyle(
                 color: Colors.brown,
                 fontSize: 30.0,
               ),),
             Text('third',
               style: TextStyle(
                 color: CupertinoColors.systemGreen,
                 fontSize: 30.0,
               ),),
             Text('fourth',
               style: TextStyle(
                 color: Colors.black87,
                 fontSize:30.0,
               ),),
           ],
         ),
       )*/ // singlechildscrollview
       /*Container(
         color: Colors.cyan,
         height: double.infinity,
         child: Row(
           mainAxisAlignment: MainAxisAlignment.end,
           crossAxisAlignment: CrossAxisAlignment.center,
           mainAxisSize:MainAxisSize.max,
           children: [
             Container(
               color: Colors.black,
               child: Text("DATA",
                 style: TextStyle(
                   fontSize: 24.0,
                   color: Colors.cyan,

                 ),

               ),
             ),
             Container(
               color: Colors.deepOrange,
               child: Text(
                 "information",
                 style: TextStyle(
                   color: Colors.brown,
                   fontSize: 24.0,

                 ),
               ),
             ),

             Container(
               color: Colors.green,
               child: Text("third",
                 style: TextStyle(
                   fontSize: 24.0,
                   color: Colors.black,

                 ),

               ),
             ),

           ],
         ),
       ) */ // row
       /*Container(
         color: Colors.lightGreen,
         width: double.infinity,
         child: Column(

           mainAxisSize: MainAxisSize.max,
           mainAxisAlignment: MainAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.end,
           children: [
             Container(

               height: 100.0,
               color: Colors.black,
               child: Text("first text", style: TextStyle(
                 color: Colors.blue,
                 fontSize: 32.0,
                // backgroundColor: Colors.red,

               ),),
             ),
             Container(
               height: 100.0,
               color: Colors.cyan,
               child: Text('second text',style: TextStyle(
                 color: Colors.deepOrange,
                 fontSize: 44.0,
                 //backgroundColor: Colors.tealAccent,
               ),),
             ),
             Container(
               height: 100.0,
               color:Colors.cyan ,
               child: Text('third text',style: TextStyle(
                 color: Colors.deepPurple,
                 fontSize: 33.0,
                // backgroundColor: Colors.black,
               ),),
             ),
           ],
         ),
       ),*/ // column
     )/* object from scaffold*/;
  }
}
