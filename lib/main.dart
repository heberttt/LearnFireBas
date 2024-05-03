import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:learnfirebas/categories.dart';


Future<void> main() async {
  runApp(MaterialApp(
    routes: {
      '/': (context) => Home(),
      '/page1': (context) => Page1(),
    },
  ));

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  var db = FirebaseFirestore.instance;

//   final city = <String, String>{
//   "name": "Los Angeles",
//   "state": "CA",
//   "country": "USA"
// };

// db
//     .collection("cities")
//     .doc("LA")
//     .set(city)
//     .onError((e, _) => print("Error writing document: $e"));
}

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: const CategoriesScreen(),
    );
  }
}



class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = [Text("home"), Text("explore")];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Page3",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 253, 172, 196),
      ),
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.amber[200],
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.explore,
            ),
            label: "Explore",
          )
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Page2",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 253, 172, 196),
      ),
      body: ListView(
        children: const [
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hdassdadasdasdasdo"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
          Text("Hello"),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar1(),
    );
  }
}

class BottomNavigationBar1 extends StatefulWidget {
  const BottomNavigationBar1({super.key});

  @override
  State<BottomNavigationBar1> createState() => _BottomNavigationBar1State();
}

class _BottomNavigationBar1State extends State<BottomNavigationBar1> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Homee"),
        BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Explore"),
      ],
      selectedItemColor: Colors.amber[200],
      currentIndex: _currentIndex,
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Page1",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 218, 205, 209),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/image1.png",
                  height: 140,
                ),
                Text("Barcode"),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink[100],
      ),
      body: ListView(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => const Page1(),
                  ));
                },
                child: const Text(
                  "Page1",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Page2(),
                  ));
                },
                child: const Text(
                  "Page 2",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const Page3(),
                  ));
                },
                child: const Text(
                  "Page 3",
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => const App(),
                  ));
                },
                child: const Text("Page4"),
              )
            ],
          )
        ],
      ),
    );
  }
}
