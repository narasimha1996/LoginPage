// ignore: unused_import
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: unused_import
import 'package:loginpage/Gridview.dart';
// ignore: unused_import
import 'package:share/share.dart';

class Sidebar extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Sidebar();
}

class _Sidebar extends State<Sidebar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        title: Center(
          child: Text(
            "Home",
            style: TextStyle(color: Colors.white, fontSize: 20.0),
          ),
        ),
        centerTitle: true,
      ),
      // ignore: missing_required_param
      body: Gridview(),
    );
  }
}

// ignore: must_be_immutable
class Navbar extends StatelessWidget {
  // String text = "";
  // String subject = "";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("flutter.com"),
            accountEmail: Text("Abc@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                  child: Image.network(
                'https://pyxis.nymag.com/v1/imgs/7ca/881/7f727ef8d29529b66c4b8866ce9fe3a605-01-thor-ragnarok.rhorizontal.w700.jpg',
                width: 90.0,
                height: 90.0,
                fit: BoxFit.cover,
              )),
            ),
            decoration: BoxDecoration(
                color: Colors.blue,
                image: DecorationImage(
                    image: NetworkImage(
                        'https://assets.rebelmouse.io/eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpbWFnZSI6Imh0dHBzOi8vYXNzZXRzLnJibC5tcy82NDYxODUyL29yaWdpbi5qcGciLCJleHBpcmVzX2F0IjoxNjU3NTU5OTAxfQ.a2wq_xrlTIAmSIdKiVuDWYWxHgBSkaqEAFMrM7p04OI/img.jpg?width=980&quality=85'),
                    fit: BoxFit.cover)),
          ),
          Divider(),
          ExpansionTile(
            title: Text(
              "Personal",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.read_more),
            trailing: Icon(Icons.keyboard_arrow_down),
            children: [
              Container(
                color: Colors.white,
                height: MediaQuery.of(context).size.height,
                child: ListView(children: [
                  ListTile(
                    title: Text(
                      "favorites",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(Icons.favorite),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(
                      "Friends",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(Icons.people),
                    onTap: () {},
                  ),
                  ListTile(
                    title: Text(
                      "Share",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(Icons.share),
                    onTap: () {
                      // ignore: non_constant_identifier_names
                      // final RenderBox box = context.findRenderObject();
                      Share.share("please visit https://pub.dev/packages/share/install "
                          );
                    },
                  ),
                  ListTile(
                    title: Text(
                      "Request",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(Icons.notifications),
                    onTap: () {},
                  )
                ]),
              )
            ],
          ),
          Divider(),
          ListTile(
            title: Text(
              "Settings",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.settings),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              "Policies",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.description),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              "Exit",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            leading: Icon(Icons.exit_to_app),
            onTap: () {
              SystemNavigator.pop();
            },
          )
        ],
      ),
    );
  }
}
