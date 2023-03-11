import 'package:flutter/material.dart';
import 'package:my_flutter_app/MatrimonyAppUsingDatabase/database.dart';
import 'package:my_flutter_app/MatrimonyAppUsingDatabase/user_details_page_using_database.dart';

class UsersPageUsingDatabase extends StatefulWidget {
  const UsersPageUsingDatabase({Key? key}) : super(key: key);

  void setStat() {
    print("hello executes");
    createState().setState(() {});
    print("\nExecuted");
  }

  @override
  State<UsersPageUsingDatabase> createState() => _UsersPageUsingDatabaseState();
}

class _UsersPageUsingDatabaseState extends State<UsersPageUsingDatabase> {
  @override
  void initState() {
    super.initState();
    MyDatabase().copyPasteAssetFileToRoot().then((value) {
      print("Database connected succesfully");
    });
  }

  @override
  Widget build(BuildContext context) {
    print("-----\n hello hello \n ----");
    return Scaffold(
      appBar: AppBar(
        title: Text("Users using database"),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          setState(() {});
        },
        child: FutureBuilder(
          future: MyDatabase().getDataFromUsersTable(),
          builder: (context, snapshot) {
            if (snapshot.data != null && snapshot.hasData) {
              List<Map<String, Object?>> lst = snapshot.data;
              return ListView(
                children: getListTiles(lst),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }

  List<Widget> getListTiles(lst) {
    List<Widget> list = [];
    // print("lst");
    for (int i = 0; i < lst.length; i++) {
      list.add(
        Card(
          child: InkWell(
            onTap: () {
              Map user = lst[i];
              print(user.toString());
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UserDetailsPageUsingDatabase(map: user),
                ),
              );
            },
            child: ListTile(
              leading: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                ),
                clipBehavior: Clip.antiAlias,
                child: (lst[i]["Gender"] == "Male")
                    ? Image.asset("assets/images/male.png")
                    : Image.asset("assets/images/female.png"),
              ),
              subtitle: Text(lst[i]["City_ID"].toString()),
              trailing: Icon(Icons.arrow_forward_ios),
              title: Text(
                lst[i]["UserName"].toString(),
              ),
            ),
          ),
        ),
      );
    }
    return list;
  }
}
