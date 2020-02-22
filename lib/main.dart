import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'THE NEW YORK TIMES';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    Widget search = Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Row(
        children: [
          SizedBox(width: 6.0,),
          Icon(Icons.search),
          SizedBox(width: 15.0,),
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Search News'
              ),
            ),
          ),
          SizedBox(width: 6.0,),
          Icon(Icons.mic)
        ],
      ),
    );

    Widget topic = Container(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Row(
        children: <Widget>[
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: (){
                  print('khoa');
                },
              ),
              Text('Technology')
            ],
          ),
          SizedBox(width: 23.0,),
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: (){
                  print('khoa');
                },
              ),
              Text('World')
            ],
          ),
          SizedBox(width: 23.0,),
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: (){
                  print('khoa');
                },
              ),
              Text('Sports')
            ],
          ),
          SizedBox(width: 23.0,),
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: (){
                  print('khoa');
                },
              ),
              Text('Business')
            ],
          ),
          SizedBox(width: 23.0,),
          Column(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.account_circle),
                onPressed: (){
                  print('khoa');
                },
              ),
              Text('Politics')
            ],
          ),
        ],
      ),
    );
    
    Widget title_detail = Container(
      margin: EdgeInsets.fromLTRB(16.0, 25.0, 16.0, 0),
      child: Row(
        children: <Widget>[
          Text('Top Stories',
            style: TextStyle(
              fontSize: 20.0
            ),),
          SizedBox(width: 230.0,),
          Text('See all',
            style: TextStyle(
                fontSize: 15.0
            ),),
        ],
      ),
    );

    Widget horizontal_listview = Container(
      child: Flexible(
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160.0,
              color: Colors.red,
            ),
            SizedBox(width: 23.0,),
            Container(
              width: 160.0,
              color: Colors.blue,
            ),
            SizedBox(width: 23.0,),
            Container(
              width: 160.0,
              color: Colors.green,
            ),
            SizedBox(width: 23.0,),
            Container(
              width: 160.0,
              color: Colors.yellow,
            ),
            SizedBox(width: 23.0,),
            Container(
              width: 160.0,
              color: Colors.orange,
            ),
            SizedBox(width: 23.0,),
            Container(
              width: 160.0,
              color: Colors.black,
            ),
            SizedBox(width: 23.0,),
            Container(
              width: 160.0,
              color: Colors.brown,
            ),
            SizedBox(width: 23.0,),
            Container(
              width: 160.0,
              color: Colors.black12,
            ),
          ],
        ),
      )
    );


    Widget trend_detail = Container(
      margin: EdgeInsets.fromLTRB(16.0, 25.0, 16.0, 0),
      child: Row(
        children: <Widget>[
          Text('Trending',
            style: TextStyle(
                fontSize: 20.0
            ),),
          SizedBox(width: 250.0,),
          Text('See all',
            style: TextStyle(
                fontSize: 15.0
            ),),
        ],
      ),
    );

    Widget vertical_listview = Container(
      child: Flexible(
        child: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 50,
              color: Colors.amber[600],
              child: const Center(child: Text('Entry A')),
            ),
            SizedBox(height: 23.0,),
            Container(
              height: 50,
              color: Colors.amber[500],
              child: const Center(child: Text('Entry B')),
            ),
            SizedBox(height: 23.0,),
            Container(
              height: 50,
              color: Colors.amber[100],
              child: const Center(child: Text('Entry C')),
            ),
            SizedBox(height: 23.0,),
            Container(
              height: 50,
              color: Colors.amber[100],
              child: const Center(child: Text('Entry C')),
            ),
            SizedBox(height: 23.0,),
            Container(
              height: 50,
              color: Colors.amber[100],
              child: const Center(child: Text('Entry C')),
            ),
          ],
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.person),
            onPressed: () {},
          ),
        ]),
      body: Column(
        children: <Widget>[
          search,
          topic,
          title_detail,
          horizontal_listview,
          trend_detail,
          vertical_listview
        ],
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
        new BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          title: new Text("Home"),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.featured_play_list),
          title: new Text("Feed"),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.save),
          title: new Text("Save"),
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.video_library),
          title: new Text("Video"),
          backgroundColor: Colors.black
        ),
        new BottomNavigationBarItem(
          icon: new Icon(Icons.live_tv),
          title: new Text("Live"),
        ),
      ]),
    );
  }
}