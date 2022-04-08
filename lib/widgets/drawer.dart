import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context)
  {
    final imageUrl="https://media-exp1.licdn.com/dms/image/D4E03AQF2FrYMZFfKzQ/profile-displayphoto-shrink_100_100/0/1647949412488?e=1654128000&v=beta&t=peBRR7sJYxg8bQXgfVkKMzYeCS2iKDn3dFbsEqEr4JQ";
    return Drawer(
     child: Container(
       color: Colors.deepPurple,
       child: ListView(
         padding: EdgeInsets.zero,
         children: [
           DrawerHeader(
              padding: EdgeInsets.zero,
               child: UserAccountsDrawerHeader(
                 margin: EdgeInsets.zero,
                 accountName: Text("Sanjay Menaria"),
               accountEmail: Text("sanjaymenaria03@gmail.com"),
               currentAccountPicture: CircleAvatar(

                 backgroundImage: NetworkImage(imageUrl),
               ),
  ),
           ),

           ListTile(
             leading: Icon(
               CupertinoIcons.home,
               color: Colors.white,
             ),
             title: Text(
               "Home",
               textScaleFactor: 1.2,
               style: TextStyle(
               color: Colors.white
             ),),
           ),
           ListTile(
             leading: Icon(
               CupertinoIcons.profile_circled,
               color: Colors.white,
             ),
             title: Text(
               "Profile",
               textScaleFactor: 1.2,
               style: TextStyle(
                   color: Colors.white
               ),),
           ),
           ListTile(
             leading: Icon(
               CupertinoIcons.mail,
               color: Colors.white,
             ),
             title: Text(
               "Email Me",
               textScaleFactor: 1.2,
               style: TextStyle(
                   color: Colors.white
               ),),
           ),
         ],
       ),
     ),
    );
  }
}