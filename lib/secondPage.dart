import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  List <String>  day =["sun" ,"mon" ,"tue" ,"Wed","thu" ,"Fri" ,"sat"];
  List <String>  date =["25" ,"26" ,"27" ,"28","29" ,"30" ,"31"];
  String active = "25";

  List<String> timeList = ["10" ,"20" ,"30" ,"60" ,"70" ,"80" ,"50" ,];
  String title= "10";
 List <String> titleList = ["hai" ,"bye" ,"kya" ,"muie" ,"chavu" ,"kavu" ,"kevuu"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(),
    body: SafeArea(
    child: SingleChildScrollView(
    child: Container(
    child: Column(
    children: [
      Text("My Classes"),
    Container(
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0,10),
            blurRadius: 1
          )
        ]
      ),
      child: Row(
      children: [
        Container(
          height: 50,
          width: 100,
        child: Center(child: Text("List")),
      decoration: BoxDecoration(
      color: Colors.green,

      ),
        ),
      Container(
        height: 50,
        width: 100,
      child: Center(child: Text("List")),
      decoration: BoxDecoration(
        color: Colors.white


      ),
      ),
      Container(
        height: 50,
        width: 100,
      child: Center(child: Text("List")),
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
          Column(
            children: [
              Text("Fri"),
              Text("sep2020")
            ],
          )
        ],
      ),
  Container(
    height: 200,
    child: ListView.builder(
      itemCount:day.length ,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context , index){
      return InkWell(
        onTap: (){
          setState(() {
            active = date[index];

          });
        },
        child: WeekListClass(date: date[index], day: day[index], active: active,
        ),
      );
    }),
  ),

      Container(

        child: ListView.builder(
            itemCount:timeList.length,
            shrinkWrap: true,

            itemBuilder: (context , index){
              return ScheduleClass(title: titleList[index], time: titleList[index],);
            }),
      )
    ],
    ),
    ),
    ),
    ));

  }
}

class WeekListClass extends StatefulWidget {
  WeekListClass({ this.day ,this.date , this.active } );
  final String day ;
  final String date;

 final String active;
  @override
  _WeekListClassState createState() => _WeekListClassState();
}

class _WeekListClassState extends State<WeekListClass> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
          Container(
                decoration: widget.active != widget.date? BoxDecoration() :BoxDecoration(
                  color: Colors.black
                ),
                child: Column(
                  children: [
                    Text(widget.day),
                    Text(widget.date)
                  ],
                ),
              ),

          ],
        ),
        SizedBox(width: 10,)
      ],
    );
  }
}

class ScheduleClass extends StatefulWidget {
  ScheduleClass({ this.title  ,this.time});
  final String time ;
  final String title;

  @override
  _ScheduleClassState createState() => _ScheduleClassState();
}

class _ScheduleClassState extends State<ScheduleClass> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("13"),
        Column(
          children: [
            Text("cfdkkk.dvdsv"),
            Text(widget.time),

          ],
        )
      ],
    );
  }
}


