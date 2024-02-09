import 'package:flutter/material.dart';

class ScreenTwo extends StatefulWidget {
  static const String id = 'screen_two';
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation Drawer'),
        backgroundColor: Color(0xff764abc),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         Expanded(
           child: ListView.builder(
               itemCount: 100,
               itemBuilder: (context, index)
               {
                 return
                   ListTile(
                     leading: CircleAvatar(
                       backgroundImage: NetworkImage('https://media.istockphoto.com/id/1300512215/photo/headshot-portrait-of-smiling-ethnic-businessman-in-office.jpg?s=612x612&w=0&k=20&c=QjebAlXBgee05B3rcLDAtOaMtmdLjtZ5Yg9IJoiy-VY='),
                     ),
                     title: Text('Rishie'),
                     onTap: (){
                       Navigator.pushNamed(context, ScreenTwo.id);
                     },
                   );
               }
           ),
         )
        ],
      ),
    );
  }
}
