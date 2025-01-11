import 'package:flutter/material.dart';
import 'package:new_flutter_project/pages/homepage.dart';
import 'package:new_flutter_project/pages/profile_page.dart';
import 'package:new_flutter_project/pages/settings_page.dart';


class FirstPage extends StatefulWidget {
   FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
 int _selectedIndex = 0;

 //method to change pages on the homepage
void _navigationBottomBar (int index){
  setState((){
    _selectedIndex = index;
  });


}
   //method to update to new page
  final List _pages = [
    //home page
    Homepage(),

    //profile
    ProfilePage(),

    //settings
    SettingsPage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Center(
            child: Text("1st Page", style: TextStyle(color: Colors.white),)),
          backgroundColor: Colors.blue,),



        body: _pages[_selectedIndex],



        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
            onTap: _navigationBottomBar,
            items: [
          // home
          BottomNavigationBarItem(
              icon: Icon(Icons.home) ,
          label: "home"),

          // profile
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
          label: "profile"),


          // settings
          BottomNavigationBarItem(icon: Icon(Icons.settings),
          label: "settings")
        ]),

        //
        drawer: Drawer(
          backgroundColor: Colors.deepPurple[200],
          child: Column(
            children: [
              //common to place a drawer header
              DrawerHeader(
                  child: Icon(
                    Icons.favorite,
                    size: 48,
                    color: Colors.white,
                  )
              ),

              //home list tile
              ListTile(
                leading: Icon(Icons.home, color: Colors.white,),
                title: Text("H O M E"),
                onTap: () {
                  //pop the drawer
                  Navigator.pop(context);

                  //navigate to the home page
                  Navigator.pushNamed(context , '/homepage');
                },
              ),

              //settings list tile
              ListTile(
                leading: Icon(Icons.settings, color: Colors.white),
                title: Text("S E T T I N G S"),
                onTap: () {
                  //pop drawer
                  Navigator.pop(context);

                  //navigate to settings page
                  Navigator.pushNamed(context , '/settings');
                },
              ),

            ],
          ),
        ),
        // body: Center(
        //   child: ElevatedButton(
        //       child: Text("Go to second page"),
        //       onPressed: () {
        //         //navigate to second page
        //
        //       }),
        // )
    );
  }
}
