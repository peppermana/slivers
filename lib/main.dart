import 'package:flutter/material.dart';
import 'package:slivers/strings.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Slivers',
        theme: ThemeData(
          primarySwatch: Colors.purple,
        ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Implementasi Slivers"),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, isScrolled){
          return [
            SliverAppBar(
              pinned: true,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  "assets/images/pixel_google.jpg",
                  fit: BoxFit.fitWidth,
                ),
                title: Text("Google pixel"),
                titlePadding: const EdgeInsets.only(left: 16, bottom: 16),
              ),
            ),
          ];
        }, body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      r'$735',
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Container(
                      color: Colors.black26,
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.collections,
                            color: Colors.white,
                          ),
                          Text(
                            '6 photos',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: 8),
                Text(
                  'Stock hanya 5 buah',
                  style: Theme.of(context).textTheme.caption,
                ),
                SizedBox(height: 8),
                Text(content_text),
                SizedBox(height: 8),
                Text(
                  'Spesifikasi',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                SizedBox(height: 8),
                Table(
                  columnWidths: {1: FractionColumnWidth(0.7)},
                  children: [
                    TableRow(
                      children: [
                        Text('Display'),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Text(content_specs_display),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text('Size'),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Text(content_specs_size),
                        ),
                      ],
                    ),
                    TableRow(
                      children: [
                        Text('Battery'),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 4),
                          child: Text(content_specs_battery),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  'Dijual oleh',
                  style: Theme.of(context).textTheme.subtitle1,
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/images/random.jpg'),
                        radius: 24,
                      ),
                    ),
                    Text('people'),
                  ],
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    child: Text('Beli'),
                    style: ElevatedButton.styleFrom(
                      primary: Theme.of(context).primaryColor,
                      onPrimary: Colors.white,
                      shape: BeveledRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(8),
                        ),
                      ),
                    ),
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Added to Cart'),
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      ),
    );
  }
}

