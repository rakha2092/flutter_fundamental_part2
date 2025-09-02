import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
    padding: const EdgeInsets.all(32),
    child: Row(
      children: [
        Expanded(
          /* soal 1*/
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /* soal 2*/
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: const Text(
                  'Wisata Air Terjun Tretes',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
               ) ,
              ),
              Text(
                'Jombang, Indonesia',
                style: TextStyle(color: Colors.grey,),
              ),
            ],
          ),
        ),
        /* soal 3*/
        Icon(
          Icons.star,
          color: Colors.red[500],
        ),
        const Text('41'),
      ],
    ),
  );

  Color color = Theme.of(context).primaryColor;

  Column buildButtonColumn(Color color, IconData icon, String label) {
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
  Widget buttonSection = Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      buildButtonColumn(color, Icons.call, 'CALL'),
      buildButtonColumn(color, Icons.near_me, 'ROUTE'),
      buildButtonColumn(color, Icons.share, 'SHARE'),
    ],
  );

  Widget textSection = Container(
    padding: const EdgeInsets.all(32),
    child: const Text(
      'Sensasi udara sejuk pegunungan dan pemandangan air '
      'terjun setinggi 158 meter menjadikan para pengunjungnya '
      'betah berlama-lama di lokasi wisata ini. '
      'Meski jaraknya cukup jauh, Air Terjun '
      'Tretes yang disebut-sebut tertinggi di Jawa Timur ini tak pernah sepi pengunjung.'
      '362458302092_Muhammad Rakha Widya Ardhana',
     softWrap: true,
    ),
  );

  return MaterialApp(
    title: 'Muhammad Rakha Widya Ardhana_362458302092',
    home: Scaffold(
      appBar: AppBar(
        title: const Text('Flutter layout demo'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'assets/1.jpg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection,
        ],
      ),
    ),
  );
}
}