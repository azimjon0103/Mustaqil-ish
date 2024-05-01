import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Scaffold(
        appBar: AppBar(
          title: Text("6-Amaliy ish"),
          backgroundColor: Colors.green,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 85,
              backgroundImage: NetworkImage(
                  "https://mir-s3-cdn-cf.behance.net/project_modules/2800_opt_1/58f60527666431.56368c2348eca.jpg"),
            ),
            SizedBox(height: 12),
            TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(Icons.delete),
                hintText: "Bu yerga yozishingiz mumkin!",
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 3,
                  ),  
                ),
                errorText: "Maydonni tuldiring",
              ),
            ),
            SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "Yuborish",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.green),
                  foregroundColor: MaterialStateProperty.all(Color.fromARGB(194, 61, 89, 88)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  )),
                ),
            ),
          ],
        ),
        bottomNavigationBar: Theme(
          data: ThemeData(
              canvasColor: Color(0xFF1F1F1F),
              ),
              child: BottomNavigationBar(
                backgroundColor: Color.fromARGB(139, 30, 30, 30),
                fixedColor: Colors.blue,
                showSelectedLabels: true,
                showUnselectedLabels: true,
                iconSize: 24,
                currentIndex: 2,
                type: BottomNavigationBarType.fixed,
                unselectedItemColor: Colors.red,
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
                    label: "Pie Chart",
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.person),
                    label: "Person",
                  ),
            ],
          ),  
        ),
      ),
    );
  }
}
