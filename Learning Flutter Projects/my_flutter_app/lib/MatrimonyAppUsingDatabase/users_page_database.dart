import 'package:flutter/material.dart';
import 'package:my_flutter_app/MatrimonyAppUsingDatabase/database.dart';
import 'package:my_flutter_app/MatrimonyAppUsingDatabase/user_details_page_using_database.dart';

class UsersPageUsingDatabase extends StatefulWidget {
  const UsersPageUsingDatabase({Key? key}) : super(key: key);

  @override
  State<UsersPageUsingDatabase> createState() => _UsersPageUsingDatabaseState();
}

class _UsersPageUsingDatabaseState extends State<UsersPageUsingDatabase> {
  @override
  void initState() {
    super.initState();
    MyDatabase().copyPasteAssetFileToRoot().then((value) {});
  }
  @override
  Widget build(BuildContext context) {
    print("-----\n hello hello \n ----");
    return Scaffold(
      appBar: AppBar(
        title: Text("Users using database"),
      ),
      body: Container(
        child: FutureBuilder(
          future: MyDatabase().getDataFromUsersTable(),
          builder: (context, snapshot) {
            List<Map<String, Object?>> lst = snapshot.data;
            return Column(
              children: getListTiles(lst),
            );
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
                child: Image.network(
                  lst[i]["Image"] ??
                      (lst[i]["Gender"] == "Male"
                          ? "https://img.freepik.com/free-icon/male_318-41774.jpg"
                          : "https://www.shutterstock.com/image-vector/women-facility-service-vector-icon-260nw-1209644506.jpg"),
                ),
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
