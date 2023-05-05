import 'package:flutter/material.dart';


import 'HomeContainer.dart';

class MyHomepPages extends StatefulWidget {
  const MyHomepPages({Key? key}) : super(key: key);

  @override
  State<MyHomepPages> createState() => _MyHomepPagesState();
}

class _MyHomepPagesState extends State<MyHomepPages>
    with SingleTickerProviderStateMixin {
  late TabController tabController;

  List<bool> _isSelected = [false, false, false];

  Widget _buildContainer(String label, int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 20,right: 20),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        child: Row(
          children: [
            Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            Spacer(),
            IconButton(
              key: UniqueKey(),
              icon: _isSelected[index]
                  ? Icon(Icons.adjust_outlined)
                  : Icon(Icons.circle_outlined),
              onPressed: () {
                setState(() {
                  _isSelected[index] = !_isSelected[index];

                });
                if (index == 0) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeMain()),
                  );
                  setState(() {
                    _isSelected[index] = !_isSelected[index];
                    _isExpanded = !_isExpanded;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }
  bool _isExpanded = false;
  bool isPressed = false;

  void _toggleExpandedState() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
        Column(
          children: [
            Container(


              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(27.0),
                color: Color(0xFF000080),
              ),
              height: MediaQuery.of(context).size.height * 0.28, // 30% of the screen height
              width:  MediaQuery.of(context).size.width ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(height:MediaQuery.of(context).size.height * 0.08,),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: Text(
                          "Find your own way",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0,
                          ),
                        ),
                      ),
                      SizedBox(width:MediaQuery.of(context).size.width * 0.18,),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Icon(Icons.notification_add
                        ,color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height:MediaQuery.of(context).size.height * 0.004,),
                  Padding(
                    padding: EdgeInsets.only(left: 30.0),
                    child: Text(
                      "Search in 600 college around!",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.0,
                      ),
                    ),
                  ),
                  SizedBox(height:MediaQuery.of(context).size.height * 0.04,),

                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 30.0),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7, // adjust the width as needed
                          height: MediaQuery.of(context).size.height * 0.06, // adjust the height as needed
                            child: Center(
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: TextFormField(
                                  textAlignVertical: TextAlignVertical.bottom,
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                                    hintText: 'Search for colleges, school...',
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: BorderSide(color: Colors.white),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                        ),


                        ),

                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.06,

                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),


                          child: IconButton(
                            color: Colors.black,
                            onPressed: () {
                              // Handle voice search
                            },
                            icon: Icon(Icons.mic),
                          ),
                        ),
                      ),



                    ],

                  )


                ],
              ),

            ),

            Expanded(
              child: Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.02,
                  left: MediaQuery.of(context).size.width * 0.05,
                  right: MediaQuery.of(context).size.width * 0.05,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          print("ocford");
                          setState(() {
                            _isExpanded = !_isExpanded;
                          });
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.25,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(MediaQuery.of(context).size.height * 0.05),
                            ),
                            image: DecorationImage(
                              image: AssetImage('asset/image/oxford.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.25,

                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(MediaQuery.of(context).size.height * 0.05),
                              ),
                              gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.bottomRight,
                                colors: [
                                  Colors.black.withOpacity(1),
                                  Colors.transparent,
                                ],
                                stops: [0.0, 1.0],
                              ),
                            ),
                            child:  Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  "Sample Text",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),


                          ),



                        ),

                      ),








                      SizedBox(height:MediaQuery.of(context).size.height * 0.02),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(MediaQuery.of(context).size.height * 0.05),
                          ),
                          image: DecorationImage(
                            image: AssetImage('asset/image/landscape2.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child:Stack(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: MediaQuery.of(context).size.height * 0.25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(MediaQuery.of(context).size.height * 0.05),
                                ),
                                gradient: LinearGradient(
                                  begin: Alignment.bottomLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Colors.black.withOpacity(1),
                                    Colors.transparent,
                                  ],
                                  stops: [0.0, 1.0],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              right: 0,
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  "Sample Text",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),



                      ),
                      SizedBox(height:MediaQuery.of(context).size.height * 0.02),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(MediaQuery.of(context).size.height * 0.05),
                          ),
                          image: DecorationImage(
                            image: AssetImage('asset/image/oxford.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.25,

                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(MediaQuery.of(context).size.height * 0.05),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.black.withOpacity(1),
                                Colors.transparent,
                              ],
                              stops: [0.0, 1.0],
                            ),
                          ),
                          child:  Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text(
                                "Sample Text",
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 24.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),


                        ),



                      ),
                    ],
                  ),
                ),
              ),
              // child: TabBarView(
              //   children: <Widget>[
              //     Home(),
              //     // Search();
              //   ],
              //   controller: tabController,
              // ),
            ),



          ],
        ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.09,
              color: Color(0xFF000080),
              child: TabBar(
                unselectedLabelColor: Color(0xFFD3D3D3),
                labelColor: Colors.white,
                indicatorColor: Colors.white,
                indicatorWeight: 3,
                tabs: <Widget>[
                  Tab(
                    icon: Icon(Icons.home),
                    text: "Home",
                  ),
                  Tab(
                    icon: Icon(Icons.search),
                    text: "Search",
                  ),
                  Tab(
                    icon: Icon(Icons.save),
                    text: "Saved",
                  ),
                  Tab(
                    icon: Icon(Icons.person),
                    text: "Profile",
                  ),
                ],
                controller: tabController,
              ),
            ),
          ),
          AnimatedPositioned(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            bottom: _isExpanded ? 0 : -350,
            left: 0,
            right: 0,
            child: Container(
              height: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft:Radius.circular(40),topRight:Radius.circular(40))
              ),
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(

                        padding: const EdgeInsets.only(top: 15,left:45,),
                        child: Text("Sorted by",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),),
                      ),
                        SizedBox(width: MediaQuery.of(context).size.width*0.50,),

                        Padding(
                            padding: const EdgeInsets.only(top: 18,right:20,),
                          child: IconButton(
                            icon: Icon(Icons.cancel_outlined,
                            opticalSize: 24),
                            onPressed:_toggleExpandedState,
                          ),

                        ),


                    ],
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Divider(
                      color: Colors.black,
                      height: 1,
                      thickness: 1,
                    ),
                  ),

                  _buildContainer("Bachelor of Technology", 0),
                  _buildContainer("Pharmacy", 1),
                  _buildContainer("Business Administration", 2),


                ],
              )



            ),
          ),
       ],
      ),
    );


  }
}
