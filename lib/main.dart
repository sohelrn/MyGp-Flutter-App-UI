// Author: https://sohelrana.net

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyGP UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(82.0),
        child: AppBarWidget(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Image.asset('assets/explore.png', height: 40.0, width: 40.0),
        tooltip: 'Increment',
        elevation: 2.0,
        backgroundColor: Colors.white,
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBarWidget(),
      body: BodyWidget(),
    );
  }
}

class BodyWidget extends StatelessWidget {
  const BodyWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Column(
        children: [
          BalanceWidget(),
          ServiceWidget(),
          NewOfferWidget(),
          OfferWidget(),
          ExploreWidget(),
          PointWidget(),
        ],
      ),
    );
  }
}

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 12.0),
                child: CircleAvatar(
                  radius: 26.0,
                  backgroundColor: Colors.grey[200],
                  backgroundImage: AssetImage('assets/profile.jpg'),
                ),
              ),
              SizedBox(width: 14.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 14.0),
                  Text('Sohel Rana',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.w400,
                          letterSpacing: 1.0)),
                  SizedBox(height: 4.0),
                  Row(
                    children: [
                      Text('01712345678',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.0,
                              fontWeight: FontWeight.w400)),
                      Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: Icon(Icons.keyboard_arrow_down,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 4.0),
          child: IconButton(
              icon: Icon(Icons.search_rounded),
              iconSize: 28.0,
              onPressed: () {}),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 4.0),
          child: IconButton(
              icon: Icon(Icons.shopping_bag_outlined),
              iconSize: 28.0,
              onPressed: () {}),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 4.0),
          child: IconButton(
              icon: Icon(Icons.notifications_none_sharp),
              iconSize: 28.0,
              onPressed: () {}),
        ),
      ],
    );
  }
}

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Colors.white,
        notchMargin: 6.0,
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 60,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              MaterialButton(
                // minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.home, color: Colors.blue, size: 28.0),
                    Text(
                      'Home',
                      style: TextStyle(
                        color: Colors.blue,
                      ),
                    )
                  ],
                ),
              ),
              MaterialButton(
                // minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.local_offer, color: Colors.black45, size: 28.0),
                    Text(
                      'Offers',
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Text(
                  'Explore',
                  style: TextStyle(color: Colors.black45),
                ),
              ),
              MaterialButton(
                // minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.person, color: Colors.black45, size: 28.0),
                    Text(
                      'Account',
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
              ),
              MaterialButton(
                // minWidth: 40,
                onPressed: () {},
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.menu, color: Colors.black45, size: 28.0),
                    Text(
                      'More',
                      style: TextStyle(color: Colors.black45),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}

class BalanceWidget extends StatelessWidget {
  const BalanceWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: Size.infinite.width,
      padding: EdgeInsets.all(24.0),
      margin: EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Text('Account Balance',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600)),
          ),
          Row(
            children: [
              Column(
                children: [
                  Container(
                    width: 140.0,
                    height: 140.0,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 6.0),
                        // use RichText for space between currency and balance
                        RichText(
                          text: TextSpan(
                            text: '৳',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w600),
                            children: <TextSpan>[
                              TextSpan(
                                  text: ' ',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 8.0)),
                              TextSpan(
                                  text: '86.25',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 24.0,
                                      fontWeight: FontWeight.w600)),
                            ],
                          ),
                        ),
                        SizedBox(height: 2.0),
                        Text('Available',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14.0,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                  ),
                  SizedBox(height: 12.0),
                  Text('Details >',
                      style: TextStyle(color: Colors.blue, fontSize: 16.0)),
                ],
              ),
              SizedBox(width: 24.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        FlatButton.icon(
                            onPressed: () {},
                            splashColor: Colors.transparent,
                            icon: Icon(Icons.public, color: Colors.grey),
                            label: Text('4687 MB',
                                style: TextStyle(fontSize: 18.0))),
                        Spacer(),
                        Icon(Icons.keyboard_arrow_right, color: Colors.blue),
                      ],
                    ),
                    Divider(
                        color: Colors.grey[200], height: 5.0, thickness: 0.5),
                    Row(
                      children: [
                        FlatButton.icon(
                            onPressed: () {},
                            splashColor: Colors.transparent,
                            icon: Icon(Icons.call, color: Colors.grey),
                            label: Text('236 Min',
                                style: TextStyle(fontSize: 18.0))),
                        Spacer(),
                        Icon(Icons.keyboard_arrow_right, color: Colors.blue),
                      ],
                    ),
                    Divider(
                        color: Colors.grey[200], height: 5.0, thickness: 0.5),
                    Row(
                      children: [
                        FlatButton.icon(
                            onPressed: () {},
                            splashColor: Colors.transparent,
                            icon: Icon(Icons.message_outlined,
                                color: Colors.grey),
                            label: Text('50 SMS',
                                style: TextStyle(fontSize: 18.0))),
                        Spacer(),
                        Icon(Icons.keyboard_arrow_right, color: Colors.blue),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ServiceWidget extends StatelessWidget {
  const ServiceWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: Size.infinite.width,
      padding: EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0, bottom: 4.0),
      margin: EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: [
          Row(
            children: [
              ServiceWidgetItem(
                  title: 'Flexiplan', image: 'assets/flexiplan.png'),
              ServiceWidgetItem(
                  title: 'Internet', image: 'assets/internet.png'),
              ServiceWidgetItem(title: 'Minutes', image: 'assets/minutes.png'),
              ServiceWidgetItem(
                  title: 'Recharge', image: 'assets/recharge.png'),
            ],
          ),
          SizedBox(height: 8.0),
          Row(
            children: [
              ServiceWidgetItem(title: 'Deals', image: 'assets/deals.png'),
              ServiceWidgetItem(title: 'History', image: 'assets/history.png'),
              ServiceWidgetItem(
                  title: 'My Offers', image: 'assets/my-offers.png'),
              ServiceWidgetItem(title: 'Watch', image: 'assets/watch.png'),
            ],
          ),
          Divider(color: Colors.grey[300], height: 1.0, thickness: 0.5),
          FlatButton(
              onPressed: () {},
              child: Text('See More',
                  style: TextStyle(color: Colors.blue, fontSize: 17.0))),
        ],
      ),
    );
  }
}

class ServiceWidgetItem extends StatelessWidget {
  const ServiceWidgetItem({
    Key key,
    @required this.title,
    @required this.image,
  }) : super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 4 - 6,
      height: 100,
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(image),
          SizedBox(height: 5.0),
          Text(title,
              style: TextStyle(color: Colors.black45),
              overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}

class NewOfferWidget extends StatelessWidget {
  const NewOfferWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: Size.infinite.width,
      padding: EdgeInsets.all(12.0),
      margin: EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Text("What's new?",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600)),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                NewOfferWidgetItem(image: 'assets/offer1.jpg'),
                NewOfferWidgetItem(image: 'assets/offer2.jpg'),
                NewOfferWidgetItem(image: 'assets/offer3.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class NewOfferWidgetItem extends StatelessWidget {
  const NewOfferWidgetItem({Key key, @required this.image}) : super(key: key);

  final String image;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(right: 16.0, bottom: 8.0),
      elevation: 2.0,
      shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.2),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 280,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16)),
                image: DecorationImage(
                    image: AssetImage(image), fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Text("To get the offer",
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600)),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, bottom: 12.0),
            child: Row(
              children: [
                Text("Click Now",
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600)),
                Icon(Icons.keyboard_arrow_right, color: Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class OfferWidget extends StatelessWidget {
  const OfferWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        color: Colors.white,
        width: Size.infinite.width,
        padding:
            EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0, bottom: 4.0),
        margin: EdgeInsets.only(bottom: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: Text("Offers",
                  style:
                      TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600)),
            ),
            TabBar(
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.black,
              labelStyle:
                  TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
              tabs: [
                Tab(text: 'Popular'),
                Tab(text: 'My Offers'),
              ],
            ),
            SizedBox(height: 12.0),
            SizedBox(
              height: 550,
              child: TabBarView(
                children: [
                  Column(
                    children: [
                      OfferWidgetItem(
                          data: '5 GB',
                          bonus: '+512 MB Bonus',
                          percentage: '10% Bonus',
                          time: '7 Days',
                          point: '94',
                          price: '৳114'),
                      OfferWidgetItem(
                          data: '10 GB',
                          bonus: '+5 GB Bonus',
                          percentage: '50% Bonus',
                          time: '30 Days',
                          point: '328',
                          price: '৳399'),
                      OfferWidgetItem(
                          data: '8 GB',
                          bonus: '+2 GB Bonus',
                          percentage: '25% Bonus',
                          time: '7 Days',
                          point: '122',
                          price: '৳148'),
                      OfferWidgetItem(
                          data: '3.5 GB',
                          bonus: '+515 MB Bonus',
                          percentage: '14.3% Bonus',
                          time: '72 Hours',
                          point: '57',
                          price: '৳69'),
                      OfferWidgetItem(
                          data: '2.5 GB',
                          bonus: '+256 MB Bonus',
                          percentage: '10% Bonus',
                          time: '72 Hours',
                          point: '47',
                          price: '৳57'),
                      Center(
                        child: FlatButton(
                            onPressed: () {},
                            child: Text('View all Offers',
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 17.0))),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      OfferWidgetItem(
                          data: '1 GB (MaxOnce)',
                          bonus: '0 Bonus',
                          percentage: '0 Bonus',
                          time: '7 Days',
                          point: '0',
                          price: '৳35'),
                      Center(
                        child: FlatButton(
                            onPressed: () {},
                            child: Text('View all Offers',
                                style: TextStyle(
                                    color: Colors.blue, fontSize: 17.0))),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OfferWidgetItem extends StatelessWidget {
  final String data;
  final String bonus;
  final String percentage;
  final String time;
  final String point;
  final String price;

  const OfferWidgetItem(
      {Key key,
      @required this.data,
      @required this.bonus,
      @required this.percentage,
      @required this.time,
      @required this.point,
      @required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1.0,
      shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.2), borderRadius: BorderRadius.circular(5)),
      margin: EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.public, color: Colors.blue),
            SizedBox(width: 12.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(data,
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w600)),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 6.0, vertical: 2.0),
                          margin: EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                              color: Colors.green[100],
                              border: Border.all(
                                  color: Colors.green[200], width: 1.0),
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              )),
                          child: Text(bonus)),
                      Spacer(),
                      Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 6.0, vertical: 2.0),
                          margin: EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              border: Border.all(
                                  color: Colors.blue[200], width: 1.0),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(3.0))),
                          child: Text(percentage,
                              style: TextStyle(color: Colors.white))),
                    ],
                  ),
                  SizedBox(height: 6.0),
                  Row(
                    children: [
                      Text(time,
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.w400)),
                      SizedBox(width: 8.0),
                      Icon(Icons.star, color: Colors.grey, size: 18.0),
                      SizedBox(width: 8.0),
                      Text(point,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w400)),
                      Spacer(),
                      Text(price,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w600)),
                      Icon(Icons.keyboard_arrow_right, color: Colors.blue),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ExploreWidget extends StatelessWidget {
  const ExploreWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: Size.infinite.width,
      padding: EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
      margin: EdgeInsets.only(bottom: 8.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Row(
              children: [
                Text("Explore",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600)),
                Padding(
                  padding: const EdgeInsets.only(top: 3.0, left: 4.0),
                  child: Icon(Icons.keyboard_arrow_right,
                      color: Colors.blue, size: 28.0),
                ),
              ],
            ),
          ),
          Row(
            children: [
              ExploreWidgetItem(title: 'Watch', image: 'assets/watch.png'),
              ExploreWidgetItem(title: 'Sports', image: 'assets/sports.png'),
              ExploreWidgetItem(title: 'News', image: 'assets/news.png'),
            ],
          ),
          SizedBox(height: 8.0),
          Row(children: [
            ExploreWidgetItem(title: 'Learn', image: 'assets/learn.png'),
            ExploreWidgetItem(title: 'Shop', image: 'assets/shop.png'),
            ExploreWidgetItem(title: 'Game', image: 'assets/game.png'),
          ]),
        ],
      ),
    );
  }
}

class ExploreWidgetItem extends StatelessWidget {
  const ExploreWidgetItem({
    Key key,
    @required this.title,
    @required this.image,
  }) : super(key: key);
  final String title;
  final String image;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 3 - 9,
      height: 100,
      color: Colors.white,
      child: Column(
        children: [
          Image.asset(image),
          SizedBox(height: 5.0),
          Text(title,
              style: TextStyle(color: Colors.black45),
              overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}

class PointWidget extends StatelessWidget {
  const PointWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: Size.infinite.width,
      padding: EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0, bottom: 4.0),
      margin: EdgeInsets.only(bottom: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          MyPointWidgetItem(point: '120'),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                PointWidgetItem(
                    data: '55 MB',
                    time: '3 Days',
                    point: '446 Points'),
                PointWidgetItem(
                    data: '125 MB',
                    time: '3 Days',
                    point: '645 Points'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MyPointWidgetItem extends StatelessWidget {
  final String point;

  const MyPointWidgetItem({Key key, @required this.point}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.money, color: Colors.orange),
            SizedBox(width: 12.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('You have $point GP Points',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                  SizedBox(height: 6.0),
                  Text('Get FREE Offers',
                      style: TextStyle(
                          fontSize: 16.0, fontWeight: FontWeight.w400)),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PointWidgetItem extends StatelessWidget {
  final String data;
  final String time;
  final String point;

  const PointWidgetItem(
      {Key key, @required this.data, @required this.time, @required this.point})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      elevation: 1.0,
      shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.2), borderRadius: BorderRadius.circular(5)),
      margin: EdgeInsets.only(bottom: 16.0, right: 12.0),
      child: Container(
        width: 280,
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.public, color: Colors.blue),
            SizedBox(width: 12.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(data,
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600)),
                    ],
                  ),
                  SizedBox(height: 6.0),
                  Row(
                    children: [
                      Text(time,
                          style: TextStyle(
                              fontSize: 17.0, fontWeight: FontWeight.w400)),
                      Spacer(),
                      Text(point,
                          style: TextStyle(
                              fontSize: 16.0, fontWeight: FontWeight.w600)),
                      Icon(Icons.keyboard_arrow_right, color: Colors.blue),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
