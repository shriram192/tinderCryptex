import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Tinder());
}

class Tinder extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tinder Clone',
      home: SwipePage(),
    );
  }
}

class SwipePage extends StatefulWidget {
  @override
  _SwipePageState createState() => _SwipePageState();
}

class _SwipePageState extends State<SwipePage> {
  var controller = PageController(initialPage: 1);
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.account_box,
            size: 40,
            color: Colors.redAccent,
          ),
          onPressed: null,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Container(
          height: deviceSize.height * 0.06,
          width: deviceSize.width * 0.3,
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage('assets/tinder.png'), fit: BoxFit.contain)),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.chat,
                size: 40,
                color: Colors.redAccent
              ),
              onPressed: null)
        ],
      ),
      body: PageView(
        scrollDirection: Axis.horizontal,
        controller: controller,
        children: <Widget>[
          swiperight(deviceSize),
          swipepage(deviceSize),
          swipeleft(deviceSize)
        ],
      ),
    );
  }

  Widget swipeleft(deviceSize) {
    return Container(
      width: deviceSize.width,
      height: deviceSize.height,
      color: Colors.red,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'SWIPE LEFT',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: deviceSize.height * 0.01,
            ),
            Container(
              height: deviceSize.height * 0.1,
              width: deviceSize.width * 0.3,
              child: Icon(
                Icons.close,
                color: Colors.white,
                size: 40,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget swipepage(deviceSize) {
    return PageView(
      scrollDirection: Axis.vertical,
      children: <Widget>[infopage(deviceSize), superlike(deviceSize)],
    );
  }

  Widget infopage(deviceSize) {
    return Container(
      color: Colors.white,
      width: deviceSize.width,
      height: deviceSize.height,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: deviceSize.height * 0.02,
          ),
          Card(
            elevation: 8.0,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.white,
            child: Stack(
              children: <Widget>[
                Container(
                  width: deviceSize.width * 0.9,
                  height: deviceSize.height * 0.7,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/xyz.jpeg'),
                          colorFilter: ColorFilter.linearToSrgbGamma(),
                          fit: BoxFit.fill)),
                ),
                Positioned(
                  bottom: 30,
                  left: 20,
                  child: Card(
                    elevation: 8.0,
                    color: Colors.transparent,
                    child: Text(
                      'Rachit, 19',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: deviceSize.height * 0.02,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Container(
                    child: IconButton(
                  iconSize: 40,
                  color: Colors.amber,
                  icon: Icon(Icons.refresh),
                  onPressed: () {},
                )),
              ),
              SizedBox(
                width: deviceSize.width * 0.02,
              ),
              Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Container(
                    child: IconButton(
                  iconSize: 40,
                  color: Colors.red,
                  icon: Icon(Icons.close),
                  onPressed: () {},
                )),
              ),
              SizedBox(
                width: deviceSize.width * 0.02,
              ),
              Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Container(
                    child: IconButton(
                  iconSize: 40,
                  color: Colors.blue,
                  icon: Icon(Icons.star),
                  onPressed: () {},
                )),
              ),
              SizedBox(
                width: deviceSize.width * 0.02,
              ),
              Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Container(
                    child: IconButton(
                  iconSize: 40,
                  color: Colors.tealAccent,
                  icon: Icon(Icons.favorite),
                  onPressed: () {},
                )),
              ),
              SizedBox(
                width: deviceSize.width * 0.02,
              ),
              Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50)),
                child: Container(
                    child: IconButton(
                  iconSize: 40,
                  color: Colors.purple,
                  icon: Icon(Icons.flash_on),
                  onPressed: () {},
                )),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget superlike(deviceSize) {
    return Container(
      width: deviceSize.width,
      height: deviceSize.height,
      color: Colors.amber,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'SUPER LIKE!!!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: deviceSize.height * 0.01,
            ),
            Container(
              height: deviceSize.height * 0.1,
              width: deviceSize.width * 0.3,
              child: Icon(
                Icons.star,
                color: Colors.white,
                size: 40,
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget swiperight(deviceSize) {
    return Container(
      width: deviceSize.width,
      height: deviceSize.height,
      color: Colors.teal,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'SWIPE RIGHT',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: deviceSize.height * 0.01,
            ),
            Container(
              height: deviceSize.height * 0.1,
              width: deviceSize.width * 0.3,
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: 50,
              ),
            )
          ],
        ),
      ),
    );
  }
}
