import 'package:building_ui/screen_two.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
        backgroundColor: Color(0xff764abc),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff764abc)
              ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage('https://media.istockphoto.com/id/1300512215/photo/headshot-portrait-of-smiling-ethnic-businessman-in-office.jpg?s=612x612&w=0&k=20&c=QjebAlXBgee05B3rcLDAtOaMtmdLjtZ5Yg9IJoiy-VY='),
                ),
                accountName: Text('Rishie'),
                accountEmail: Text('rishie@gmail.com')),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Page 1'),
              onTap: (){
                Navigator.pushNamed(context, ScreenTwo.id);
              },
            ),
            ListTile(
              leading: Icon(Icons.calculate),
              title: Text('Page 2'),
              onTap: (){
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),

            ListTile(
              leading: Icon(Icons.login_outlined),
              title: Text('Logout'),
              onTap: (){
                Navigator.pushNamed(context, HomeScreen.id);
              },
            ),

          ],
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ScreenTwo.id);
                    // Navigator.push(context, MaterialPageRoute(builder: (context) => ScreenTwo() ));
                  },
                  child: Text('screen 1')))
        ],
      ),
    );
  }
}
