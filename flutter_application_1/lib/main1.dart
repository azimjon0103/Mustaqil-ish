import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late TextEditingController _firstController;
  late TextEditingController _secondController;
  String _firstText = '';

  @override
  void initState() {
    super.initState();
    _firstController = TextEditingController();
    _secondController = TextEditingController();
  }

  @override
  void dispose() {
    _firstController.dispose();
    _secondController.dispose();
    super.dispose();
  }

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("6-amaliy ish"),
          backgroundColor: Colors.yellow,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 65,
              backgroundImage: NetworkImage(
                  "https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/58f60527666431.56368c2348eca.jpg"),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 56),
              child: TextField(
                controller: _firstController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.pink,
                  hintText: "Matn kiriting",
                  contentPadding: EdgeInsets.symmetric(horizontal: 51),
                ),
                onChanged: (text) {
                  setState(() {
                    _firstText = text;
                  });
                },
              ),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _secondController.text = _firstText;
                });
              },
              child: Text("Yuborish"),
            ),
            SizedBox(height: 12),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36),
              child: TextField(
                controller: _secondController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.blue,
                  hintText: "Takrorlanuvchi matn",
                  contentPadding: EdgeInsets.symmetric(horizontal: 26),
                ),
              ),
            ),
            SizedBox(height: 30),
          ],
        ),
        bottomNavigationBar: Theme(
          data: ThemeData(canvasColor: Colors.black54),
          child: BottomNavigationBar(
            backgroundColor: Colors.black54,
            iconSize: 24,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.wallet),
                label: "Wallet",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.pie_chart),
                label: "Pie chart",
              ),
            ],
          ),
        ),
      ),
    ); 
  }
}           