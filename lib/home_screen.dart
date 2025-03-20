import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(new MoonApp());
}



class MoonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'MooN',
      home: new MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _MainPageState();
  }
}


class _MainPageState extends State<MainPage> {

  /// This controller can be used to programmatically
  /// set the current displayed page
  PageController _pageController;

  /// Indicating the current displayed page
  /// 0: feed
  /// 1: photos
  /// 2: people
  /// 3: inbox
  /// 4: more
  int _page = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new PageView(
            children: [
              new Container(color: Colors.white),
              new Container(color: Colors.grey),
              new Container(color: Colors.white),
              new Container(color: Colors.grey),
              new Container(color: Colors.white)
            ],

            /// Specify the page controller
            controller: _pageController,
            onPageChanged: onPageChanged
        ),
        bottomNavigationBar: new BottomNavigationBar(
            items: [
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.feed),
                  title: new Text("Feed")
              ),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.photo),
                  title: new Text("Photos")
              ),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.people),
                  title: new Text("People")
              ),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.inbox),
                  title: new Text("Inbox")
              ),
              new BottomNavigationBarItem(
                  icon: new Icon(Icons.dehaze),
                  title: new Text("More")
              )
            ],

            /// Will be used to scroll to the next page
            /// using the _pageController
            onTap: navigationTapped,
            currentIndex: _page
        )
    );
  }

  /// Called when the user presses on of the
  /// [BottomNavigationBarItem] with corresponding
  /// page index
  void navigationTapped(int page){

    // Animating to the page.
    // You can use whatever duration and curve you like
    _pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease
    );
  }


  void onPageChanged(int page){
    setState((){
      this._page = page;
    });
  }

  @override
  void initState() {
    super.initState();
    _pageController = new PageController();
  }

  @override
  void dispose(){
    super.dispose();
    _pageController.dispose();
  }


}
