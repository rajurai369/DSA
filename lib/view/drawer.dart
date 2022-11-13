import 'package:flutter/material.dart';

class SideBar extends StatelessWidget {
  const SideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(  
    // Important: Remove any padding from the ListView.  
    padding: EdgeInsets.zero,  
    children: <Widget>[  
       UserAccountsDrawerHeader(  
        accountName: const Text("Dharan Scholar color"),  
        accountEmail: const Text("scholaracademy123@gmail.com"),  
        currentAccountPicture: CircleAvatar(  
          backgroundColor: Colors.orange,  
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset("images/scholars.jpg")),  
         
        ),  
      ),  
      ListTile(  
        leading: const Icon(Icons.home), title: const Text("Home"),  
        onTap: () {  
          Navigator.pop(context);  
        },  
      ),  
      ListTile(  
        leading: const Icon(Icons.settings), title: const Text("Settings"),  
        onTap: () {  
          Navigator.pop(context);  
        },  
      ),  
      ListTile(  
        leading: const Icon(Icons.contacts), title: const Text("Contact Us"),  
        onTap: () {  
          Navigator.pop(context);  
        },  
      ),  
    ],  
        ),  
      );
  }
}
