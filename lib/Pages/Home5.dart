import 'package:flutter/material.dart';

import 'Home6.dart';
import 'Home7.dart';

class home5 extends StatefulWidget {
  const home5({Key? key}) : super(key: key);

  @override
  State<home5> createState() => _home5State();
}

class _home5State extends State<home5> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController =TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF000080),
        title: Center(
          child: Text("GHJK Engeeneing College",
          style: TextStyle(
            color: Colors.white
          ),),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height * 1.0,
        child: Column(
          children: [
            // Set a fixed height for TabBar
              Container(
                height: 50,
                color: Color(0xD3D3D3),
                child: TabBar(
                  labelColor: Color(0xFF000080),
                  unselectedLabelColor: Colors.black,
                  controller: _tabController,
                  tabs: [
                    Tab(
                      text: 'Available Books',
                    ),
                    Tab(
                      text: 'Requested Books',
                    ),
                  ],
                ),
              ),

            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.height * 1.0, // Set a fixed height for TabBarView
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    SliderPager3(),
                    Sliderpager2(),
                  ],
                ),
              ),
            ),

          ],


        ),
      ),
    );
  }
}

