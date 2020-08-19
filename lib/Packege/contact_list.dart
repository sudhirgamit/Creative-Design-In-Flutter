import 'package:flutter/material.dart';
import 'package:contacts_service/contacts_service.dart';
//import 'package:firebase_messaging/firebase_messaging.dart';

class Contact_List extends StatefulWidget {
  @override
  _Contact_ListState createState() => _Contact_ListState();
}

class _Contact_ListState extends State<Contact_List> {

//  FirebaseMessaging messaging = FirebaseMessaging();
  List<Contact> contact = [];
  List<Contact> contactFilter = [];
  TextEditingController _searchdata = new TextEditingController();

  bool search = false;
  @override
  void initState() {
    // TODO: implement initState
//    messaging.configure(
//      onLaunch: (Map<String, dynamic> event){},
//      onMessage: (Map<String, dynamic> event){},
//      onResume: (Map<String, dynamic> event){},
//    );
//    messaging.requestNotificationPermissions(IosNotificationSettings(
//      sound: true,
//      badge: true,
//      alert: true
//    ));
//    messaging.getToken().then((msg){});
    super.initState();
    getAllContacts();
    _searchdata.addListener((){
        filterContacts();
    });
  }

  getAllContacts() async{
    List<Contact> contacts = (await ContactsService.getContacts()).toList();
    setState(() {
      contact = contacts;
    });

    print(contact.length);
  }

  filterContacts(){
    List<Contact> _contacts = [];
    _contacts.addAll(contact);
    if(_searchdata.text.isNotEmpty){
      _contacts.retainWhere((contact){
        String searchTeam = _searchdata.text.toLowerCase();
        String contactName = contact.displayName.toLowerCase();
        return contactName.contains(searchTeam);
      });

      setState(() {
        contactFilter = _contacts;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isSearching = _searchdata.text.isNotEmpty;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Contact List",
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Contact List"),
          actions: <Widget>[
            IconButton(
              onPressed: (){
                setState(() {
                  search = true;
                });
              },
              icon: search!=true ? Icon(Icons.search) : Icon(Icons.search,color: Colors.teal,),
            )
          ],
        ),
        body: contact.isEmpty==true ? Center(child: CircularProgressIndicator(strokeWidth: 1.5,backgroundColor: Colors.red,),)
            : Column(
              children: <Widget>[
                search!=true ?
                Container():
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: TextField(
                    controller: _searchdata,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        //Sborder: OutlineInputBorder(),
                        hintText: "Search",
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: IconButton(
                          onPressed: (){
                            _searchdata.clear();
                          },
                          icon:Icon(Icons.clear,size: 20,color: Colors.teal,),
                        )
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                Expanded(
                  child: ListView.builder(
                  itemCount: isSearching == true ? contactFilter.length : contact.length,
                  itemBuilder: (context, index){
                    Contact _contact1 = isSearching == true ? contactFilter[index] : contact[index];
                    return Card(
                      child: ListTile(
                        title: Text(_contact1.displayName),
                        subtitle: Text(_contact1.androidAccountName),
                        leading: (_contact1.avatar!=null && _contact1.avatar.length>0) ?
                        CircleAvatar(
                          backgroundImage: MemoryImage(_contact1.avatar),
                        ):
                        CircleAvatar(
                          child: Text(_contact1.initials()),
                        ),
                        onTap: (){},
                        trailing: Wrap(
                          children: <Widget>[
                            Icon(Icons.phone,color: Colors.teal,),
                            SizedBox(width: 20,),
                            Icon(Icons.message,color: Colors.teal,),
                          ],
                        ),
                      ),
                    );
                  }
        ),
                ),
              ],
            ),
      ),
    );
  }
}
