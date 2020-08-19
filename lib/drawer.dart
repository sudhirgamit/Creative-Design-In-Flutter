import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage("https://images.unsplash.com/photo-1503249023995-51b0f3778ccf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
              ),
              accountName: Text("Gamit Sudhir"),
              accountEmail: Text("sudhirgamitbca15@gmail.com"),
              otherAccountsPictures: <Widget>[
                CircleAvatar(
                  backgroundImage: NetworkImage("https://images.unsplash.com/photo-1500856056008-859079534e9e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60"),
                ),
              ],
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Account"),
              subtitle: Text("Personal"),
              onTap: (){},
              trailing: Icon(Icons.edit,),
            ),

            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
              subtitle: Text("sudhirgamitbca15@gmail.com"),
              onTap: (){},
              trailing: Icon(Icons.share,),
            ),
          ],
        )
    );
  }
}
