// ignore: unused_import
import 'package:flutter/material.dart';

class Tabbar extends StatefulWidget {
  @override
  _TabbarState createState() => _TabbarState();
}

class _TabbarState extends State<Tabbar> with SingleTickerProviderStateMixin {
  // ignore: unused_field
  TabController _tabController;
  @override
  // ignore: must_call_super
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  // ignore: override_on_non_overriding_member
  void dipose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Types of animals",style: TextStyle(fontSize:20.0,
        color: Colors.white )),
        centerTitle: true,
        // ignore: missing_required_param
        bottom:TabBar(
          controller:_tabController ,
          indicatorColor: Colors.white,
          indicatorSize:TabBarIndicatorSize.tab ,
          indicatorWeight:5.0,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.white,
          tabs: [
            Text("Herbivores",style: TextStyle(fontSize:20.0 )),
            Text("Carnivores",style: TextStyle(fontSize:20.0 )),
            Text("Omnivores",style: TextStyle(fontSize:20.0 ))
          ],
          )
        ), 
        body:Center() ,
      );
      
  }
}
