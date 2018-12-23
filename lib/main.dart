import 'package:flutter/material.dart';
import 'package:nabo_hjelp/screens/conversations.dart';
import 'package:nabo_hjelp/screens/facts.dart';
import 'package:nabo_hjelp/screens/home.dart';
import 'package:nabo_hjelp/screens/message.dart';
import 'package:nabo_hjelp/screens/profile.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nabohjelp',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        accentColor: Colors.teal,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  MainPage({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MainPageState();
  }
}


// Will pretty much only handle navigation with bottom nav bar
class MainPageState extends State<MainPage> {
  int currentIndex = 0;

  static Text navText(String text) => Text(text, style: TextStyle(color: Colors.black, fontSize: 12),);

  // Use cont
  List<BottomNavigationBarItem> navigationItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      title: navText("Home"),
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.poll),
        title: navText("Facts")
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.add),
        title: navText("Message"),
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.message),
        title: navText("Conversations")
    ),
    BottomNavigationBarItem(
        icon: Icon(Icons.account_circle),
        title: navText("Profile")
    ),
  ];

  List<Widget> screens = [
    HomeScreen(),
    FactsScreen(),
    MessageScreen(),
    ConversationsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: navigationItems,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        currentIndex: currentIndex,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }


}
