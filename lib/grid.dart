// ignore: unused_import
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:loginpage/bottomSheet.dart';
// ignore: unused_import
import 'package:webview_flutter/webview_flutter.dart';

// ignore: must_be_immutable
class Grid extends StatefulWidget {
  @override
  _GridState createState() => _GridState();
}

class _GridState extends State<Grid> {
  List<String> images = [
    "https://www.carcovers.com/carresources/images/top-10-ford-mustangs-of-all-time01.jpg",
    "https://www.carcovers.com/carresources/images/top-10-ford-mustangs-of-all-time02.jpg",
    "https://www.carcovers.com/carresources/images/top-10-ford-mustangs-of-all-time03.jpg",
    "https://www.carcovers.com/carresources/images/top-10-ford-mustangs-of-all-time04.jpg",
    "https://www.carcovers.com/carresources/images/top-10-ford-mustangs-of-all-time05.jpg",
    "https://www.carcovers.com/carresources/images/top-10-ford-mustangs-of-all-time06.jpg",
    "https://www.carcovers.com/carresources/images/top-10-ford-mustangs-of-all-time07.jpg",
    "https://www.carcovers.com/carresources/images/top-10-ford-mustangs-of-all-time08.jpg",
    "https://squir.com/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/f/o/ford_mustang_mach1_1971_-0000.jpg",
    "https://www.carcovers.com/carresources/images/top-10-ford-mustangs-of-all-time10.jpg",
    "https://pictures.topspeed.com/IMG/crop/202005/the-best-ford-mustan-5_800x0w.jpg",
    "https://pictures.topspeed.com/IMG/crop_webp/201607/1969-ford-mustang-boss-42-7_1600x0.webp",
    "https://static3.hotcarsimages.com/wordpress/wp-content/uploads/2020/10/1965-Shelby-GT350-Fordauthority.jpg",
    "https://qph.fs.quoracdn.net/main-qimg-d72bb7514d901f2ee4b46cb343a7eb68.webp",
  ];

  List<String> names = [
    "SVT Cobra R",
    "SVO",
    "King Cobra",
    " Bullitt",
    "California Special",
    "Boss 330",
    "Shelby GT 500",
    "Original 1964 ¼, 289",
    "Mach 1",
    "GT350",
    "Boss 302",
    "Boss 351",
    "Boss 429",
    "AV8R",
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(flex: 1,
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              GridView.builder(
                  physics:ScrollPhysics(),
                  shrinkWrap: true,
                  // ignore: missing_required_param
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, childAspectRatio: 0.8),
                  itemCount: names.length,
                  // scrollDirection: Axis.vertical,
                  // ignore: missing_return
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                        padding: EdgeInsets.all(20.0),
                        child: Card(
                          color: Colors.white,
                          elevation: 16,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                          child: InkWell(
                              onTap: () {
                               showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Wrap(
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        "Maintenance",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Divider(
                    height: 2.0,
                  ),
                  ListTile(
                    leading: Icon(Icons.car_repair,size: 30.0,),
                    title: Text(
                      "Car Service",
                      style: TextStyle(
                        color: Colors.black,fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.cleaning_services,size: 30.0,),
                    title: Text(
                      "Car Wash",
                      style: TextStyle(
                        color: Colors.black,fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.settings,size: 30.0,),
                    title: Text(
                      "Spare Parts",
                      style: TextStyle(
                        color: Colors.black,fontWeight: FontWeight.bold,
                        fontSize: 15.0,
                      ),
                    ),
                    onTap: () {},
                  )
                ],
              ),
            ),
          ],
        );
      });
                              },
                              child: Column(children: <Widget>[
                               Padding(padding: EdgeInsets.zero),
                               Image.network(
                                 images[index],
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
                        ));
                  }),
            ]),
          ),
        ],
      ),
    );
  }
}
