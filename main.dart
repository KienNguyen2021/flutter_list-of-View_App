import 'package:flutter/material.dart';

void main() {
  // runApp(const MyApp());
  // }

  runApp( MaterialApp(

    home: SafeArea(

      // Center : Text is in center of the phone

      child: Scaffold(

        // body : Center(child: MyWidget()), // Text in the Center

             body:  MyWidget(),   // Text will be displayed on Top

        //body:  Center(child: MyWidget()),

      ),
    ),

    debugShowCheckedModeBanner:false , // disappear the Flutter at corner of phone

  )
  );
}

/* Column, Row, Stack, Expanded, Flexible, Positioned, Align, Center

 */

class MyWidget extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    return Container(

          color: Colors.blue,


         child: Card(
                                //  to round 4 corners for the Card :
             shape:  RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(10.0)
                  ),
/*
   1 : open Row
   2 : put Cursor before Row-------> select Wrap with Padding :
 */

             child:  Padding(

                   padding: const EdgeInsets.all(10.0),

                    child: Row(

                           children: [

                                Container( width: 60,height: 40, color: Colors.red),

                                const SizedBox(width: 10),       // to move Column 10 pexel from Container
                               
                                const Expanded(child:
                                      Column(

                                       mainAxisSize: MainAxisSize.min,        // this wraps the box only, not the whole screen

                                       crossAxisAlignment: CrossAxisAlignment.start,      // Start is moved Column to left, End is moved Column to Right

                                         children:  [
                                          Text('Tittle of Songs', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),

                                          Text('Author', style: TextStyle(fontSize: 13)),
                                            ],
                                     )
                                  ),


                                Container (width: 20, height: 20, color : Colors.green ),

                             const SizedBox(width: 10),           // put a space between Container and Column

                             Column(

                                     mainAxisSize: MainAxisSize.min,

                                       children: [

                                            Container( width: 20, height: 20, color: Colors.green,),
                                            
                                            Text('20')

                                                   ],

                                                 )

                                  ],
                             ),
             ),

         ),




    );

  }

}