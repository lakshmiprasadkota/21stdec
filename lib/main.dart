import 'package:classes/secondPage.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home:HomePage()
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List <String> listIcons = ["Assets/images/shoe2.png" ,"Assets/images/piyano.png" ,"Assets/images/art.png" ,"Assets/images/bulb.png" ,] ;
  List <String> featuresText = ["Sports" , "Music" , "Arts" , 'Stream'];
  String active  = "sports";

  //GiterClassList:
  List <String> giterImage = ["Assets/images/giter2.jpg","Assets/images/giter1.jpg",];
  List <String> giterText = ["The guitar is a fretted musical \ninstrument that usually has six strings." , "The guitar is a fretted musical \ninstrument that usually has six strings. " , ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xfff9f9f9),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(children: [
            Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              child: Text("Hi,Alina!" , style: TextStyle(color:Color(0xff535353), fontWeight: FontWeight.bold , fontSize: 18) ,),
            ),
            Container(
              margin: EdgeInsets.all(10),

              child: TextField(

                decoration: InputDecoration(
                  filled: true ,
                  isDense: true,
                  fillColor: Colors.white,
                  prefixIcon: Icon(Icons.search_rounded ,color: Color(0xffd5d7d6),),
                  hintText: "Music",
                  hintStyle: TextStyle(color: Color(0xffd0d0d2), fontSize: 14, fontWeight: FontWeight.w900 ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.transparent , )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(color: Colors.transparent , )
                  ),

                ),
              ),
            ),

            Container(
              margin: EdgeInsets.all(10),
              child: Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(

                        child: Image.asset("Assets/images/miq.jpg"),
                        borderRadius: BorderRadius.circular(20),),
                      Positioned(
                          left: 20 , top:40,
                          child: Text("Why You Should choose\nDragon Coach ?" , style: TextStyle(
                              fontSize: 16,
                              color: Colors.white , fontWeight: FontWeight.w900),)),
                      Positioned(
                          bottom: 50 , left: 20,
                          child: Text("There are many good teachers" , style: TextStyle(
                              fontSize: 15,
                              color: Colors.white , fontWeight: FontWeight.w400),))
                    ],
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text("Features"  ,style: TextStyle(color: Color(0xff545557), fontWeight: FontWeight.bold, fontSize: 18),),
                  ),
                  Container(
                    height: 100,
                    child: ListView.builder(
                        itemCount: listIcons.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,

                        itemBuilder: (context , index){
                          return InkWell(
                            onTap: (){
                              setState(() {
                                active = featuresText[index];
                              });
                            },
                            child: FeaturesList(
                              listIcon: listIcons[index],
                              text: featuresText[index],
                              active: active,
                            ),

                          );

                        }),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    child: Text("My Upcoming Classes" , style: TextStyle(color: Colors.black , fontSize: 18 , fontWeight: FontWeight.bold),),
                  ),
                  Container(
                    height: 230,
                    child: ListView.builder(
                        itemCount: giterImage.length,
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context,index){
                          return  GiterListClass(
                            giterImage: giterImage[index],
                            giterText: giterText[index],

                          );
                        }),
                  )

                ],
              ),
            ),

          ],),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,

        selectedItemColor: Color(0xff16b06d),
        backgroundColor: Colors.white,
        elevation: 5,
        items: [
          BottomNavigationBarItem(icon: IconButton(icon: Icon(Icons.shop_rounded), ),label: "" ,),
          BottomNavigationBarItem(icon: Icon(Icons.notifications) ,label: ""),
          BottomNavigationBarItem(icon: IconButton(icon:Icon(Icons.library_books),onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondPage()));},),label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person) , label: "")
        ],
      ),
    );
  }
}


class FeaturesList extends StatefulWidget {
  const FeaturesList({
   this.text , this.listIcon , this.active
  }) ;
  final String listIcon;
  final String text;
  final String active;

  @override
  _FeaturesListState createState() => _FeaturesListState();
}

class _FeaturesListState extends State<FeaturesList> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     children: [
       Column(

         children: [
           Container(
             height: 50,
             width: 50,
             child: Center(child: Image.asset(widget.listIcon , height: 30, width: 30, color: widget.active!= widget.text? Color(0xff6c6e6d): Colors.black,)),
             decoration: widget.active != widget.text ? BoxDecoration(
                 borderRadius: BorderRadius.circular(10),
                 color: Colors.white,
                 boxShadow: [
                   BoxShadow(
                       offset: Offset(0,3),
                       color: Colors.white,
                       blurRadius: 1

                   )
                 ]
             ) : BoxDecoration(
               borderRadius: BorderRadius.circular(10),
               color: Color(0xff16b06d),
               boxShadow: [
                 BoxShadow(
                   offset: Offset(0,6),
                   color: Color(0xff16b06d),
                   blurRadius: 1

                 )
               ]
             ),
           ),
           SizedBox(height: 20,),
           Text(widget.text , style: TextStyle(color: widget.active!= widget.text? Color(0xff6c6e6d): Color(0xff16b06d),),)
         
         ],
       ),
       SizedBox(width: 50,)

     ],
    );
  }
}


class GiterListClass extends StatefulWidget {
  GiterListClass({ this.giterImage , this.giterText});
  final String giterImage ;
  final String giterText;
  @override
  _GiterListClassState createState() => _GiterListClassState();
}

class _GiterListClassState extends State<GiterListClass> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(

              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0,5),
                    color: Colors.blueGrey[50],
                    blurRadius: 5
                )
              ]

          ),
          child:  Row(
              children:[
                Column(
                  children: [
                    Container(
                        child:Column(
                          children: [
                            Container(
                              height: 160,
                              width:340,

                              child:  ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.asset(widget.giterImage , fit: BoxFit.cover, )),
                            ),
                            Container(


                                padding: EdgeInsets.only(left: 10,top: 10 , right: 20),
                              child: Text(widget.giterText))
                          ],
                        )

                    )
                  ],
                ),



              ]
          ),
        ) ,
        SizedBox(width: 10,)
      ],
    );
  }
}
