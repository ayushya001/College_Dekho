import 'package:flutter/material.dart';

class SliderPager3 extends StatelessWidget {
  const SliderPager3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Container(
          // height: MediaQuery.of(context).size.height *1.0,
          child: Column(
            children: [
              Image(
                image: AssetImage('asset/image/oxford.png'),
              ),
              Image(
                image: AssetImage('asset/image/lanscape.png'),
              ),
              Image(
                image: AssetImage('asset/image/landscape2.png'),
              ),
              Image(
                image: AssetImage('asset/image/oxford.png'),
              ),
              Image(
                image: AssetImage('asset/image/oxford.png'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
