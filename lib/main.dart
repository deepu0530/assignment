import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    height: 200,
                    width: 400,
                    color: Colors.deepPurple[800],
                    child: Column(
                      children: [
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(padding: EdgeInsets.symmetric(horizontal: 10),
                                      child: Stack(
                                        children: <Widget>[
                                          Container(child:Icon(Icons.circle,color: Colors.orangeAccent,size: 20,),
                                          ),
                                          Positioned(left:10,width:10,child: Container(
                                            child: Icon(Icons.circle,color: Colors.green,size: 20,),
                                          ))
                                        ],
                                      ),
                                  ),
                                  SizedBox(width: 20,),
                                  Text("Assignment",style: TextStyle(color: Colors.grey[300],fontSize: 20),),
                                ],
                              ),
                              Stack(
                                children: <Widget>[
                                  Container(child: IconButton(icon: Icon(Icons.notifications,color: Colors.white,size: 25,), onPressed: (){})),

                              Positioned(bottom:4,left: 6,child: Container(child: IconButton(icon: Icon(Icons.circle,color: Colors.orangeAccent,size: 12,), onPressed: (){}),)),
                              ],
                              ),
              ],
                          ),
                        ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               IconButton(icon: Icon(Icons.arrow_back_ios,color: Colors.white,size: 20,), onPressed: (){}),
                               Center(child: Text("October2020",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),)),
                               IconButton(icon: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 20,), onPressed: (){}),
                             ],
                           ),
                           Container(
                             padding: EdgeInsets.symmetric(vertical:10,horizontal: 30),
                                 child:SingleChildScrollView(
                                     scrollDirection: Axis.horizontal,
                                     child: Row(
                                       //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         first(name: "Sun",number: "20",),
                                         SizedBox(width: 30,),
                                         first(name: "Mon",number: "21",),
                                         SizedBox(width: 30,),
                                         first(name: "Tue",number: "22",),
                                         SizedBox(width: 30,),
                                         first(name: "Wed",number: "23",),
                                         SizedBox(width: 30,),
                                         first(name: "Thu",number: "24",),
                                         SizedBox(width: 30,),
                                         first(name: "Fri",number: "25",),
                                         SizedBox(width: 30,),
                                         first(name: "Sat",number: "26",),
                                   ],
                                   ),
                          ),
                           ),
                  ],
                  ),
          ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                    child: Row(
                      children: [
                        Text("Oct,25,2020",style: TextStyle(color: Colors.grey[400],fontSize: 16,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),

                          second(color: Colors.blue,color2: Colors.blue),
                          SizedBox(height: 20,),
                          second(color: Colors.orangeAccent,color2: Colors.orangeAccent),
                  SizedBox(height: 20,),
                          second(color: Colors.green,color2: Colors.green),
                  SizedBox(height: 20,),
                  second(color: Colors.pinkAccent,color2: Colors.pinkAccent),
                  SizedBox(height: 20,),
                  second(color: Colors.purple,color2: Colors.purple),
                ],
              ),
            ),
        ),
    ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orangeAccent,
          child: Icon(Icons.add,color: Colors.white,size: 30,),
        ),
    ),
    );
  }
}

class second extends StatelessWidget {
  const second({
    this.color,this.color2,
    Key key,
  }) : super(key: key);
final Color color;
  final Color color2;
  @override
  Widget build(BuildContext context) {
    return Container(
                height: 65,
                  width: 360,
                  padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(color: Colors.grey.withOpacity(0.2),
                        offset: Offset(0,3),
                    ),
                  ],
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.circular(5.0),
                  color: Colors.white,
                ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              Text("Oct",style: TextStyle(color: color),),
                              SizedBox(height: 5,),
                              Text("25",style: TextStyle(fontSize: 20,color: color2),),
                            ],
                          ),
                          SizedBox(width: 10,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Tue, 9:30pm to 10:30pm(6.5h)",style: TextStyle(fontSize:16,color: Colors.black,),),
                              SizedBox(height: 5,),
                              Text("Star Prince at Metropolis as Greeter",style: TextStyle(fontSize: 12,color: Colors.grey),),
                            ],
                          ),
                        ],
                      ),
                             Container(
                               height: 25,
                               width: 25,
                               decoration: BoxDecoration(
                                 shape: BoxShape.circle,
                                 color: Colors.grey[200],
                               ),
                               child: Center(child: Icon(Icons.more_horiz,size: 20,color: Colors.grey[500],)),
                             ),
                    ],
                  ),

                  );
  }
}

class first extends StatelessWidget {
  const first({
    this.name,this.number,
    Key key,
  }) : super(key: key);
final String name;
final String number;
  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(name,style: TextStyle(color: Colors.grey[300]),),
        SizedBox(height: 20,),
        Text(number,style: TextStyle(fontSize:20,color: Colors.white,fontWeight: FontWeight.bold),),
      ],
    );
  }
}