import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('قائمة المنتجات'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: const [
          ProductBox(
              name: 'TABLET',
            description: 'حهاز موجة لي فئة محبة لمشاهدة الفيدوهات والافلام ',
            price: 2300,
            color: Color.fromARGB(255, 3, 94, 39),
          ),
          ProductBox(
            name: 'pixel 8 pro',
            description:  'هاتف جميل يحمل معالج متوسط لكن مميز بتصوير الليلي ',
            price: 4399,
            color: Color.fromARGB(255, 3, 58, 168),
          ),
          ProductBox(
           name: 'iphone',
            description: 'هاتف  ذكي مميز جدا بتصوير الفيديو ',
            price: 5699,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          ProductBox(
            name: 'LAPTOP',
            description: 'يمتاز بنوع الانظمة و الخصاص',
            price: 6999,
            color: Color.fromARGB(255, 158, 158, 158),
          ),
          ProductBox(
            name: 'USB',
            description: 'مخزن معلومات وملفات ',
            price: 50,
            color: Color.fromARGB(255, 255, 0, 0),
          ),
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  final String name;
  final String description;
  final int price;
  final Color color;

  const ProductBox({
    super.key,
    required this.name,
    required this.description,
    required this.price,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: const EdgeInsets.all(8),
        height: 120,
        child: Row(
          children: [
            Container(
              width: 120,
              height: 120,
              color: color ,
              alignment: Alignment.center,
              child: Text(
                name,
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    description,
                    textDirection: TextDirection.rtl,
                  ),
                  const SizedBox(height: 5),
                  Text(
                    'السعر: $price',
                    textDirection: TextDirection.rtl,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
