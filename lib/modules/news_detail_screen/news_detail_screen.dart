import 'package:flutter/material.dart';

class NewsDetailScreen extends StatefulWidget {
  const NewsDetailScreen({
    Key? key,
    required this.id,
    this.title = 'Laptop yang sangat mahal',
    this.summary =
        'ThinkPad T470 adalah salah satu laptop bisnis yang diproduksi oleh Lenovo. Laptop ini dirancang untuk memenuhi kebutuhan para profesional yang membutuhkan perangkat yang handal, tahan lama, dan memiliki fitur keamanan yang tinggi. ThinkPad T470 dilengkapi dengan layar 14 inci dengan resolusi Full HD, serta dilengkapi dengan baterai yang tahan lama hingga 12 jam. Selain itu, laptop ini memiliki keyboard yang ergonomis dan dilengkapi dengan TrackPoint yang memudahkan pengguna dalam melakukan navigasi.Dalam hal performa, ThinkPad T470 juga cukup mumpuni dengan menggunakan prosesor Intel Core i5-7200U atau Core i7-7500U, RAM sebesar 8 GB, dan penyimpanan SSD sebesar 256 GB. ThinkPad T470 juga memiliki fitur keamanan seperti fingerprint reader dan dTPM (discrete Trusted Platform Module) yang dapat melindungi data penting pengguna. Overall, ThinkPad T470 adalah laptop yang cocok digunakan oleh para pebisnis yang membutuhkan perangkat yang handal, tahan lama, dan memiliki fitur keamanan yang tinggi.',
    this.imageUrl =
        'https://id-test-11.slatic.net/p/397f02b906ae5290587b755ec33f30b2.png',
  }) : super(key: key);

  final String id;
  final String title;
  final String summary;
  final String imageUrl;

  @override
  State<NewsDetailScreen> createState() => _NewsDetailScreenState();
}

class _NewsDetailScreenState extends State<NewsDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.network(widget.imageUrl),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                widget.title,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                widget.summary,
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
