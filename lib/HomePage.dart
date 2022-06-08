// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors


import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => HomePageState();
}
class HomePageState extends State<HomePage>{
          List<CardItem> items = [
            CardItem(
              title: 'Monday',
              subtitle: '38°C',
            ),
            CardItem(
              title: 'Tuesday',
              subtitle: '39°C',
            ),
            CardItem(
              title: 'Wednesday',
              subtitle: '37°C',
            ),
            CardItem(
              title: 'Thursday',
              subtitle: '40°C',
            ),
            CardItem(
              title: 'Friday',
              subtitle: '36°C',
            ),
            CardItem(
              title: 'Saturday',
              subtitle: '42°C',
            ),
            CardItem(
              title: 'Sunday',
              subtitle: '35°C',
            ),

    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text('Weather'),
        centerTitle: true,
        leading: Icon(Icons.menu, color: Colors.white,),
      ),
      body: Column(
        children: [
          // Enter City name
          Padding(
            padding: const EdgeInsets.only(top: 15.0,left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.search, color: Colors.white, size: 30,),
                SizedBox(width: 20,),
                Text('Enter city name', style: TextStyle(color: Colors.white, fontSize: 20),)
              ],
            ),
          ),
          SizedBox(height: 20.0,),
          //City Details
          Column(
            children: [
              Text('Tashkent , UZ ' , style: TextStyle(color: Colors.white, fontSize: 40),),
              Text('Wensday, June 8, 2022', style: TextStyle(color: Colors.white),)
            ],
          ),
          SizedBox(height: 30.0,),
          //Temperature Details
          Container(
            child: Padding(
              padding: const EdgeInsets.only(left: 70),
              child: Row(
                children: [
                  Icon(Icons.sunny, size: 100, color: Colors.yellow,),
                  SizedBox(width: 10,),
                  Column(
                    children: [
                      Text('38°C', style: TextStyle(color: Colors.white, fontSize: 50),),
                      Text('Sun Shine', style: TextStyle(color: Colors.white, fontSize: 20),),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30.0,),
          //Extra Weather Details
          Container(
            child: Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                  child: Column(
                    children: [
                      Icon(
                        Icons.ac_unit,
                        color: Colors.white,
                        size: 40,
                      ),
                      Text('5', style: TextStyle(fontSize: 20, color: Colors.white),),
                      Text('km/hr', style: TextStyle(color: Colors.white),),
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  child: Column(
                    children: [
                      Icon(
                        Icons.ac_unit,
                        color: Colors.white,
                        size: 40,
                      ),
                      Text('3', style: TextStyle(fontSize: 20, color: Colors.white),),
                      Text('%', style: TextStyle(color: Colors.white),),
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  child: Column(
                    children: [
                      Icon(
                        Icons.ac_unit,
                        color: Colors.white,
                        size: 40,
                      ),
                      Text('20', style: TextStyle(fontSize: 20, color: Colors.white),),
                      Text('%', style: TextStyle(color: Colors.white),),
                    ],
                  ),
                )),
              ],
            ),
          ),
          SizedBox(height: 80.0,),
          //Text
        Text('7-DAY WEATHER FORECAST', style: TextStyle(color: Colors.white, fontSize: 20.0),),
          SizedBox(height: 25,),
          //Horizontal List Viev
          Container(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 7,
              separatorBuilder: (context, _) => SizedBox(width: 12,),
              itemBuilder: (context, index) => _buildCard(item: items[index]),
            ),
          ),
        ],
      ),
    );
  }
}

class CardItem {
  final String title;
  final String subtitle;

  const CardItem({
    required this.title,
    required this.subtitle,
  });
}

Widget _buildCard({
  required CardItem item,
}) =>
    Container(
      width: 200,
      height: 200,
      padding: EdgeInsets.all(10.0),
      color: Colors.deepOrange.shade300,
      child: Expanded(
        child: Column(
          children: [
            Text(
              item.title,
              style: TextStyle(
                  color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  item.subtitle,
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                SizedBox(width: 10,),
                Icon(
                  Icons.sunny,
                  color: Colors.yellow,
                  size: 30,
                )
              ],
            ),
          ],
        ),
      ),
    );
