import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  static final id='HomePage';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/ic_header.jpg'),
                  fit: BoxFit.cover,
                )
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.3),
                    ]
                  )
                ),
                child: Column(mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text('Best Hotels Ever',style: TextStyle(fontSize: 30.0,color:Colors.white),),
                    SizedBox(height: 30,),
                    Container(padding: EdgeInsets.symmetric(vertical: 3),
                      margin: EdgeInsets.symmetric(horizontal: 40),
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search for hotels',
                          hintStyle: TextStyle(color: Colors.grey,fontSize: 20),
                          prefixIcon: Icon(Icons.search)
                        ),
                      ),
                    ),
                    SizedBox(height: 30,),
                  ],
                ),
              ),
            ),
          SizedBox(height: 30,),
          //  body
            Container(padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Business Hotels",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  SizedBox(height: 30,),
                  //Business Hotels
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        hotels(image:"assets/images/ic_hotel1.jpg",title:"Hotel1"),
                        hotels(image:"assets/images/ic_hotel2.jpg",title:"Hotel2"),
                        hotels(image:"assets/images/ic_hotel3.jpg",title:"Hotel3"),
                        hotels(image:"assets/images/ic_hotel4.jpg",title:"Hotel4"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Airport Hotels",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  SizedBox(height: 30,),
                  //Business Hotels
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        hotels(image:"assets/images/ic_hotel2.jpg",title:"Hotel2"),
                        hotels(image:"assets/images/ic_hotel1.jpg",title:"Hotel1"),
                        hotels(image:"assets/images/ic_hotel4.jpg",title:"Hotel4"),
                        hotels(image:"assets/images/ic_hotel3.jpg",title:"Hotel3"),
                      ],
                    ),
                  ),
                  SizedBox(height: 20,),
                  Text("Resorts Hotels ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                  SizedBox(height: 30,),
                  //Business Hotels
                  Container(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        hotels(image:"assets/images/ic_hotel3.jpg",title:"Hotel3"),
                        hotels(image:"assets/images/ic_hotel4.jpg",title:"Hotel4"),
                        hotels(image:"assets/images/ic_hotel2.jpg",title:"Hotel2"),
                        hotels(image:"assets/images/ic_hotel1.jpg",title:"Hotel1"),
                      ],
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget hotels({image, title}){
    return AspectRatio(
        aspectRatio:1/1,
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(image: AssetImage(image),fit: BoxFit.cover),
        ),
        child: Container(padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.bottomRight,
              colors: [
                Colors.black.withOpacity(0.7),
                Colors.black.withOpacity(0.2),
              ]
            ),
          ),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(title,style: TextStyle(fontSize: 25,color: Colors.white),),
              Icon(Icons.favorite,color: Colors.red,)
            ],
          ),
        ),
      ),
    );
  }
}
