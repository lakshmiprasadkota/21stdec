import 'package:classes/main.dart';
import 'package:classes/thirdScreen.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(
    child: SingleChildScrollView(
    child: Container(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
    child: Column(
    children: [
      Text("My Classes" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.bold , fontSize: 20),),
    Container(
      margin: EdgeInsets.only(top: 10 ,bottom: 30),
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(

          boxShadow: [
            BoxShadow(
                color: Colors.grey,
                offset: Offset(0, 10),
                blurRadius: 6
            )
          ]
      ),
      child: Row(
      children: [
        Container(
          height: 50,
          width: MediaQuery.of(context).size.width * 0.3,
        child: Center(child: Text("List" , style: TextStyle(color: Colors.white),) ),
      decoration: BoxDecoration(
      color: Colors.green,

      ),
        ),
      Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.3,
      child: Center(child: Text("Week" ,style: TextStyle(color: Colors.black),)),
      decoration: BoxDecoration(
        color: Colors.white


      ),
      ),
      Container(
        height: 50,
        width: MediaQuery.of(context).size.width * 0.3,
      child: Center(child: Text("Month" ,style: TextStyle(color: Colors.black),)),
      decoration: BoxDecoration(

          color: Colors.white
      ),
      )
      ],
      ),
    ),

      Row(
        children: [
          Text("25" , style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          SizedBox(width: 3,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Fri" ,style: TextStyle(color: Colors.grey ,fontWeight: FontWeight.w500),),
              Text("sep2020" ,style: TextStyle(color: Colors.grey ,fontWeight: FontWeight.w600),)
            ],
          )
        ],
      ),


      Container(
        height:600,

          child: DayListView())







    ],
    ),
    ),
    ),
    )
    ,bottomNavigationBar: BottomNavigationBar(
      unselectedItemColor: Colors.grey,

      selectedItemColor: Color(0xff16b06d),
      backgroundColor: Colors.white,
      elevation: 5,
      items: [
        BottomNavigationBarItem( icon: IconButton(icon: Icon(Icons.shop_rounded),onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));},),label: ''),

        BottomNavigationBarItem(icon: Icon(Icons.notifications) ,label: ""),
        BottomNavigationBarItem(icon: IconButton(icon:Icon(Icons.library_books),onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));},),label: ''),

        BottomNavigationBarItem( icon: IconButton(icon: Icon(Icons.person),onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>Bookoptions ()));},),label: ''),

      ],
    ),);


  }
}




class DayList {
  DayList({this.txt, this.Subtxt , this.dataList });
  String txt ;
  String Subtxt;
   List <Data>  dataList;
}
class Data {
  Data({this.title ,this.time , this.timeInterval});
  String title ;
  String timeInterval ;
  String time ;
}

var dayListItem = [
  DayList(
      txt: "Sun",

      Subtxt:"25",
    dataList: [
      Data(
        title: "Children Running 1 on 1Course",
        timeInterval:"13:00AM-14:00AM",
        time: "13:00"
      ) ,
      Data(
          title: "Children Playing 1 on 1Course",
          timeInterval:"14:00AM-15:00AM",
          time: "14:00"
      ) ,
      Data(
          title: "Children Boxing 1 on 1Course",
          timeInterval:"16:00AM-17:00AM",
          time: "15:00"
      )  ,

    ]
  ),
  DayList(
      txt: "Mon",
      Subtxt:"26",
      dataList: [
        Data(
            title: "Children Circket  on 1Course",
            timeInterval:"11:00AM-12:00AM",
            time: "11:00"
        ) ,
        Data(
            title: "Children Rhyme 1 on 1Course",
            timeInterval:"12:00AM-13:00AM",
            time: "12:00"
        ) ,
        Data(
            title: "Children chess 1 on 1Course",
            timeInterval:"13:00AM-17:00AM",
            time: "13:00"
        )  ,

      ]


  )
];








class DayListView extends StatefulWidget {


  @override
  _DayListViewState createState() => _DayListViewState();
}

class _DayListViewState extends State<DayListView> {
  String val ;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 100),
          child: Column(
            children: [

              Container(
                height: 500,
                child: ListView.builder(
                  shrinkWrap: true,
                   scrollDirection: Axis.horizontal,
                  itemCount: dayListItem.length,
                    itemBuilder: (context, x){
                  return Container(
                    child:
                    Column(
                      children: [
                        InkWell(
                              onTap: (){
                                setState(() {
                                  val = dayListItem[x].Subtxt;
                                  print("$val");
                                });
                              },
                              child: Container(
                                height: 50 ,
                                   width: 40,

                                   decoration: val != dayListItem[x].Subtxt ? BoxDecoration(color: Colors.grey ) :BoxDecoration(
                                     color: Colors.green,


                                   ),
                                  child: Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [Text( "${dayListItem[x].txt}" ,style: TextStyle(color: val != dayListItem[x].Subtxt ? Colors.black : Colors.white,) ),
                                Text( "${dayListItem[x].Subtxt}" ,style: TextStyle(color: val != dayListItem[x].Subtxt ? Colors.black : Colors.white,))],),
                                  ))) ,

                        Container(
                          width:320,
                          child: ListView.builder(
                                  shrinkWrap: true,
                             itemCount: dayListItem[x].dataList.length,

                              itemBuilder: (context ,y){
                            return Column(
                              children: [
                                Row(children: [
                                  Text("${dayListItem[x].dataList[y].time}"),
                                  Container(
                                    padding: EdgeInsets.all(10),
                                    decoration: BoxDecoration(
                                      color: Colors.blueGrey,


                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("${dayListItem[0].dataList[0].title}"),
                                        Text("${dayListItem[0].dataList[0].timeInterval}"),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              backgroundColor: Colors.grey,
                                            ),
                                            CircleAvatar(
                                              backgroundColor: Colors.grey,
                                            ),
                                            Text("+2Children")
                                          ],
                                        )

                                      ],
                                    ),
                                  )
                                ],),
                                SizedBox(height: 10,)
                              ],
                            );
                          }),
                        )
                      ],
                    ),
                  );
                }),
              )
            ],
          ),
        ),
      ),

    );

  }
}

