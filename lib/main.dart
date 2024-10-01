import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

Widget build(BuildContext context) {

   Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
  Color color = Theme.of(context).primaryColor;

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(color, Icons.call, 'CALL'),
    _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(color, Icons.share, 'SHARE'),
  ],
);
  Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Danau Toba, terletak di Sumatera Utara dengan luas mencapai 1.145 kilometer persegi, Danau Toba tampak seperti sebuah lautan yang berada di ketinggian 900 meter di atas permukaan laut.',
    softWrap: true,
  ),
);
  Widget titlesection = Container(
    padding: const EdgeInsets.all(16.0),
    child: Row(
      children: [
        Expanded(child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: const Text(
                'Oeschien Lake Campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Text(
              'kamdersteg, switzerland',
              style: TextStyle(
                color: Colors.grey
              ),
            )
          ],
        ),),
        Icon(
          Icons.star,
          color:Colors.red[500],
        ),
        const Text ('41')
      ],
    ),
  );



    return MaterialApp(
      title: 'Flutter Layout Demo',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fitri ayu wulan sari | 362358302106'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'assets/pemandangan.jpg',
              width: 300,
              height: 200,
              fit: BoxFit.cover,
            ),
            titlesection,
            buttonSection,
            textSection
            

          ],

        ),
      ),
    );
  }
}