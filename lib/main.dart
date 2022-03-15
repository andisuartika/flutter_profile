import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Profil'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  _launch(url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceWebView: false,
      );
    } else {
      print("Not supported");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue.shade900,
        centerTitle: true,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            ClipOval(
              child: Image.network(
                'https://www.andisuartika.com/assets/img/about.png',
                width: 200,
                height: 200,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Putu Andi Suartika',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blue.shade400,
              ),
            ),
            GestureDetector(
              onTap: () {
                var url = 'https://andisuartika.com';
                _launch(url);
              },
              child: Text(
                'andisuartika.com',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.shade600,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      border: Border.all(
                        width: 3,
                        color: Colors.blue.shade200,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.location_searching_sharp,
                          color: Colors.green,
                          size: 70,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade500,
                          ),
                          child: Center(
                            child: Text(
                              'Singaraja',
                              style: TextStyle(
                                color: Colors.yellow.shade700,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      border: Border.all(
                        width: 3,
                        color: Colors.blue.shade200,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.home_sharp,
                          color: Colors.yellow.shade800,
                          size: 70,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade500,
                          ),
                          child: Center(
                            child: Text(
                              'Sangket',
                              style: TextStyle(
                                color: Colors.yellow.shade700,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      border: Border.all(
                        width: 3,
                        color: Colors.blue.shade200,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.music_note_sharp,
                          color: Colors.purple.shade700,
                          size: 70,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade500,
                          ),
                          child: Center(
                            child: Text(
                              'Rock',
                              style: TextStyle(
                                color: Colors.yellow.shade700,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: Container(
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      border: Border.all(
                        width: 3,
                        color: Colors.blue.shade200,
                        style: BorderStyle.solid,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.location_city,
                          color: Colors.green,
                          size: 70,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          width: 150,
                          height: 30,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade500,
                          ),
                          child: Center(
                            child: Text(
                              'Undiksha',
                              style: TextStyle(
                                color: Colors.yellow.shade700,
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
