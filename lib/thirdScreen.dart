import 'package:classes/secondPage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main.dart';
class Bookoptions extends StatefulWidget {
  @override
  _BookoptionsState createState() => _BookoptionsState();
}

class _BookoptionsState extends State<Bookoptions> {
  String Activedate="20";
  String Activetime="";
  List<String> days=["Sun","Mon","Tue","Wed","Thur","Fri","Sat"];
  List<String> dates=["25","26","27","28","29","30","31"];
  List<String> times=["11:00","12:00","1:00","2:00","3:00","4:00"];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 14 , vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 5,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.chevron_left_outlined,size: 29,color: Colors.black54,),
                      Text("Book Options",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w700),),
                     Container()
                    ],
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [

                       Container(
                         height: 120,
                           width: 110,
                           child: ClipRRect(
                             borderRadius: BorderRadius.circular(5),
                               child: Image.asset("Assets/images/giter1.jpg",fit: BoxFit.cover, width: 100,))),
                       SizedBox(width: 10,),
                      Expanded(
                        child: Container(
                         height: 130,


                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                           Text("Specialist Sing Class for young toddlers(Yrs 3-5+........",maxLines: 2,softWrap: true, overflow: TextOverflow.ellipsis,
                             style: TextStyle(color: Colors.black54,fontSize: 14,fontWeight: FontWeight.w800),),

                              Row(
                                     crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(Icons.timelapse_outlined,size: 18, color:Colors.grey,),
SizedBox(width: 5,),
                                Flexible(

                                        child: Text("Every Tuesday at 11:00 hrs. Starting from Sep 29,2020",maxLines: 2, overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Color(0xffd6d6d6) ,fontSize: 11,fontWeight: FontWeight.w500),))
                                  ,SizedBox(width: 11,),Icon(Icons.arrow_forward_ios , color: Colors.grey, size: 15,)
                                  ],
                                ),

                              Row(
                                children: [
                                  Icon(Icons.location_on,size: 20,color: Colors.grey),
                                  SizedBox(width: 5,),
                                  Text("On-Location",style: TextStyle(color: Color(0xffd6d6d6) , fontSize: 11,fontWeight: FontWeight.w500),)
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 35,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Selected Date",style: TextStyle(color: Color(0xff808183),fontSize: 15,fontWeight: FontWeight.w700),),
                      Row(
                        children: [
                          Text("View calender",style: TextStyle(color: Colors.grey , fontSize: 12),),
                          Icon(Icons.keyboard_arrow_right,size: 20,color: Colors.black12,)
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 80,
                    child: ListView.builder(
                      itemCount: dates.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return InkWell(
                          onTap: (){
                            setState(() {
                              Activedate= dates[index];
                            });
                          },
                          child: Days(
                            day: days[index],
                            date: dates[index],
                            activedate: Activedate,
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Selected Time",style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w700),),
                      Row(
                        children: [
                          Text("Show more times",style: TextStyle(color: Colors.grey, fontSize: 13),),
                          Icon(Icons.keyboard_arrow_right,size: 20,color: Colors.black12,)
                        ],
                      )
                    ],
                  ),

                  Container(
                    height: 80,
                    child: ListView.builder(
                      itemCount: times.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index){
                        return InkWell(
                          onTap: (){
                            setState(() {
                              Activetime= times[index];
                            });
                          },
                          child: Times(
                            time: times[index],
                            Activetime: Activetime,
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: 15,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Select Kid(s)",style: TextStyle(color: Colors.black54,fontSize: 14,fontWeight: FontWeight.w700),),
                      Icon(Icons.add,size: 25   ,color: Colors.black12,)
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: 40 , width: 70,
                            decoration: BoxDecoration(
                                color: Color(0xffc9ebdd),
                                border: Border(left: BorderSide(color: Color(0xff48a77d) ,width: 2),right: BorderSide(color: Color(0xff48a77d) , width: 2),bottom: BorderSide(color: Color(0xff48a77d) ,width: 2),top: BorderSide(color: Color(0xff48a77d), width: 2),)
                            ),
                            child: Center(child: Text("Alina" , style: TextStyle(color: Color(0xff48a77d)),)),
                          ),
]
                     )

                     ,
                      SizedBox(width: 20,),
                      Container(
                        height: 40 , width: 70,
                        decoration: BoxDecoration(
                            color: Colors.black12,
                        ),
                        child: Center(child: Text("WangLi" ,style: TextStyle(color: Colors.black54),)),
                      )
                    ]
                  ),
                  SizedBox(height: 25,),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Location",style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w700),)),
                  SizedBox(height: 15,),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Park plaza Towers 1, Floor 60, Flat A,\nFutian, Shenzhen",style: TextStyle(color: Colors.black12,fontSize: 12,fontWeight: FontWeight.w700),)),

                  SizedBox(height: 20,),
                  Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Notes for coach(optional)",style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.w700),)
                  ),
                  SizedBox(height: 10,),
                  Container(
                    width:MediaQuery.of(context).size.width,
                    child: RaisedButton(onPressed: (){},color: Color(0xFF48a77d),textColor: Colors.white,shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(5.0))),
                      child: Text('Next Step',style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w400),),
                    ),

                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,

          selectedItemColor: Color(0xff16b06d),
          backgroundColor: Colors.white,
          elevation: 2,
          items: [
            BottomNavigationBarItem( icon: IconButton(icon: Icon(Icons.shop_rounded),onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},),label: ''),

            BottomNavigationBarItem(icon: Icon(Icons.notifications) ,label: ""),
            BottomNavigationBarItem(icon: IconButton(icon:Icon(Icons.library_books),onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));},),label: ''),

            BottomNavigationBarItem( icon: IconButton(icon: Icon(Icons.person),onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>Bookoptions ()));},),label: ''),

          ],
        ),
      ),

    );
  }
}

class Times extends StatefulWidget {
  const Times({
    this.time,
    this.Activetime,
    this.onTap,
    Key key,
  }) : super(key: key);
  final String time;
  final String Activetime;
  final Function onTap;

  @override
  _TimesState createState() => _TimesState();
}

class _TimesState extends State<Times> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

       Container(
            alignment: Alignment.center,
            height: 38,
            width: 60,
            decoration: widget.Activetime !=widget.time? BoxDecoration(borderRadius:BorderRadius.circular(3),color: Colors.black12):BoxDecoration(



                color: Color(0xff48a77d)
            ),
            child:Text(widget.time,style: TextStyle( fontSize :13 ,color: widget.Activetime != widget.time ? Colors.black54 : Colors.white,)) ,
          ),
        SizedBox(width: 10,)

      ],
    );
  }
}
class Days extends StatefulWidget {
  const Days({
    this.day,
    this.date,
    this.onTap,
    this.activedate,
  }) ;
  final String day;
  final String date;
  final Function onTap;
  final String activedate;

  @override
  _DaysState createState() => _DaysState();
}

class _DaysState extends State<Days> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Row(
        children: [
         Container(
              height: 60,
              width: 50,
              decoration: widget.activedate != widget.date?BoxDecoration(color: Colors.black12,borderRadius: BorderRadius.circular(3)):BoxDecoration(
                  color:Color(0xFF48a77d),
                  borderRadius: BorderRadius.circular(3)
              ),
              child:  Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(widget.day,style: TextStyle( fontSize :13 ,color: widget.activedate != widget.date ? Colors.black54 : Colors.white,),),

                      Text(widget.date,style: TextStyle(fontSize: 12, color: widget.activedate != widget.date ? Colors.black54 : Colors.white,),)
                    ],
                  ),
                ),
              ),

          SizedBox(width: 10,)

        ],
      ),
    );
  }
}