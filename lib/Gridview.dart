import 'package:flutter/material.dart';
import 'package:loginpage/grid.dart';
// ignore: unused_import
import 'package:loginpage/TabBar.dart';

class Gridview extends StatefulWidget {
  @override
  _GridviewState createState() => _GridviewState();
}

class _GridviewState extends State<Gridview> {
  List<String> images = [
    "https://mymodernmet.com/wp/wp-content/uploads/2020/12/NPOTY-Photo-Contest-2020-Hope-in-a-Burned-Forest-JoAnne-McArthur-Winner-C8-Man-and-Nature.jpg",
    "https://i.ytimg.com/vi/IUN664s7N-c/maxresdefault.jpg",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg",
    "https://newhdgallery.files.wordpress.com/2014/06/3d-animal-background-wallpaper.jpg",
    "https://assets.wallpapersin4k.org/uploads/2017/04/HD-Wallpapers-Funny-Animals-8.jpg",
    "https://wallpaper.dog/large/5441414.jpg",
    "https://i2.wp.com/mojly.com/wp-content/uploads/2018/03/wacky-funny-animals-pics-photo-gallery-15.jpg?fit=750%2C500&ssl=1",
    "https://media.2oceansvibe.com/wp-content/uploads/2013/01/animal.jpg",
    "https://nypost.com/wp-content/uploads/sites/2/2020/12/GRUMPY_ANIMALS_GALLERY.3.jpg?quality=90&strip=all&w=1024",
    "https://wallpaperaccess.com/full/356953.jpg",
  ];
  List<String> names = [
    "Kangaroo",
    "Red Deer",
    "SunSet",
    " Tiger",
    "Squirrel",
    "kitties",
    "Dog",
    "Lion",
    "Eagle",
    "Panda",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
    children: <Widget>[
      Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
      "Animals",
      textAlign: TextAlign.left,
      style: TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 20.0,
      color: Colors.black),
      ),
    ),
      SizedBox(
        height: 320,
        width: MediaQuery.of(context).size.height,
        child: ListView.builder(
        // shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index) {
        return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Card(
        semanticContainer: true,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        color: Colors.white,
        elevation: 16,
        shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(12.0)),
        child: InkWell(
        onTap: () {
         Navigator.push(context,MaterialPageRoute(builder: (context)=>Tabbar()));
        },
        child: Column(children: <Widget>[
      Padding(padding: EdgeInsets.zero),
      Image.network(
        images[index],
        height: 230.0,
        width: 230.0,
        fit: BoxFit.fitWidth,
      ),
      Padding(
        padding: EdgeInsets.all(10.0),
        child: Text(
          names[index],
          textAlign: TextAlign.center,
          style: TextStyle(
      color: Colors.black,
      fontSize: 15.0,
      fontWeight: FontWeight.bold,
          ),
        ),
      )
    ]),
        ),
      ),
    ]);
        }),
        ),
      Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(" Ford Mustang Cars",
    textAlign: TextAlign.left,
    style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20.0,
        color: Colors.black)),
    ),
      Grid(),
    ],
        );
  }
}
