import 'package:flutter/material.dart';
import 'package:internship_project/Pages/Myhomepage.dart';

import 'Home5.dart';
import 'Home6.dart';
import 'Home7.dart';
import 'HomeContainer.dart';

class home4 extends StatefulWidget {
  const home4({Key? key}) : super(key: key);

  @override
  State<home4> createState() => _home4State();

}

class _home4State extends State<home4> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final ScrollController _scrollController = ScrollController();
  bool _showNewPage = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(() {
      if (_scrollController.offset >= _scrollController.position.maxScrollExtent && !_scrollController.position.outOfRange) {
        setState(() {
          _showNewPage = true;
          print("yes it work");
        });
      } else {
        setState(() {
          _showNewPage = false;
          print("no  its not  working");

        });
      }
    });
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  NotificationListener<ScrollNotification>(
    onNotification: (ScrollNotification notification) {
      if (notification is ScrollEndNotification) {
        if (_showNewPage) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) =>home5(),
            ),
          );
          setState(() {
            _showNewPage = false;
          });
        }
      }
      return true;
    },
      child: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: AssetImage('asset/image/oxford.png'),
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.15,
              width: MediaQuery.of(context).size.width,
              child: Card(
                elevation: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: double.infinity,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Text(
                              "GHJK Engeenering College",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 15, top: 2),
                            child: Text(
                              "GHJK Engeenering College is one of the best engeenring college"
                                  "in india with the nirf ranking(2023) 5th among all the premimum institute of india.It has big campus",
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 13,
                              ),
                              softWrap: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 13),
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.10,
                        width: MediaQuery.of(context).size.width * 0.12,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6.0),
                          color: Colors.green,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                "4.3",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Icon(
                                Icons.star,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50, // Set a fixed height for TabBar
              child: Container(
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
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.55, // Set a fixed height for TabBarView
              child: TabBarView(
                controller: _tabController,
                children: [
                  SliderPager3(),
                  Sliderpager2()
                ],
              ),
            ),
          ],
        ),
      ),
    ),
    );
  }
}
