import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Profile User',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final _width = MediaQuery.of(context).size.width;
    final _height = MediaQuery.of(context).size.height;

    final List<String> list = [
      'https://scontent-sin6-2.xx.fbcdn.net/v/t1.0-9/73524552_149232413144225_8845194810617757696_n.jpg?_nc_cat=106&_nc_oc=AQlXXqpcHlorvX-tEaAIutaXrDuaNr1h2XI98aCyEtd7NbePowqfFtNfsaFY-BMAvGI&_nc_ht=scontent-sin6-2.xx&oh=d84a9632ff232a096d3e6e96c1f7b7f6&oe=5E557627',
      'https://scontent-sin6-2.xx.fbcdn.net/v/t1.0-9/75572054_149232446477555_5516772113165320192_n.jpg?_nc_cat=105&_nc_oc=AQnP39halGHjhYiv_8jZ5rW0ezmb33GkbnmDq70z4wapOs5xzW-IO5S-yeevP3WIFQ4&_nc_ht=scontent-sin6-2.xx&oh=14301c03ffc0651393642233c3fbe84b&oe=5E18A984',
      'https://scontent-sin6-2.xx.fbcdn.net/v/t1.0-9/70496496_149232429810890_8580759274840391680_n.jpg?_nc_cat=110&_nc_oc=AQlth_W-mOzIN-t496_dbJmsEG6clBE17VcgIhdMG3qWoG18d5c6pJ8xQ5ws_dJhGGY&_nc_ht=scontent-sin6-2.xx&oh=9decb966de5bd9c0d05702b69dcf0236&oe=5E5DEC21',
      'https://scontent-sin6-2.xx.fbcdn.net/v/t1.0-9/75362374_149232476477552_7099550901286731776_n.jpg?_nc_cat=103&_nc_oc=AQnVj4ZTsfXO_GMvYg-tcnY7bGzsTjcD9F5Fkxf6pYZtc6wsISPP0Ri1ydu9LwR64RM&_nc_ht=scontent-sin6-2.xx&oh=41ee8107426fbc201e1822ed846e587f&oe=5E580BD6',
      'https://scontent-sin6-2.xx.fbcdn.net/v/t1.0-9/74698900_149232496477550_2154722308571267072_n.jpg?_nc_cat=101&_nc_oc=AQmjabLuAwTFtOzwq_AonkLD5lUIizBXY-ObwhUFCDjHxcuniGDLoYu9fd2ZU5BYOYE&_nc_ht=scontent-sin6-2.xx&oh=af5cbd35019bb7705dc3f16079afc5a0&oe=5E42C32D'
    ];
    String desc =
        '⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀'
        'Hey, Im Ciara! Im a 20 something who is passionate about living an adventurous life and helping others to do the same. '
        'After working in corporate Human Resources for nearly 2 years, I recently quit my job to travel full time and document my experience along the way. '
        'I can now happily say that leaving my job for an extraordinary life was the best decision Ive ever made. '
        'I am now doing two things I always dreamed of - traveling the world & inspiring others to do the same '
        'So if youre reading this, please know that it means the world to me! '
        'I am honored that youve decided to follow along with me on this journey! '
        'I hope that I am able to leave you with something that helps you, entertains you, or simply makes you smile. ';

    return new Container(
      decoration: new BoxDecoration(
          gradient: new LinearGradient(
        begin: Alignment.topRight,
        end: new Alignment(
            0.0, 1.0), // 10% of the width, so there are ten blinds.
        colors: [
          const Color(0xFFC5C5C5),
          const Color(0xFFFFFFFF),
        ], // whitish to gray
        tileMode: TileMode.clamp, // repeats the gradient over the canvas
      )),
      child: new Stack(
        children: <Widget>[
          new ClipPath(
            clipper: new ArcClipper(),
            child: new Stack(
              children: <Widget>[
                new Image.asset(
                  'images/profilebg.jpg',
                  fit: BoxFit.fitHeight,
                  height: _height / 2.5,
                  colorBlendMode: BlendMode.clear,
                ),
              ],
            ),
          ),
          new Align(
            alignment: Alignment.topRight,
            child: new Padding(
              padding:
                  new EdgeInsets.only(top: _height / 3.6, right: _width / 20),
              child: new FloatingActionButton(
                onPressed: () {},
                child: new Icon(Icons.add_call),
                backgroundColor: Colors.pink,
              ),
            ),
          ),
          new Padding(
            padding: new EdgeInsets.only(top: _height / 3.3, left: _width / 20),
            child: new Material(
              child: new CircleAvatar(
                  backgroundImage: new AssetImage(
                    'images/jackman.png',
                  ),
                  radius: _height / 12),
              elevation: 15.0,
              color: Colors.transparent,
              borderRadius:
                  new BorderRadius.all(new Radius.circular(_height / 12)),
            ),
          ),
          new Scaffold(
            appBar: new AppBar(
              title: new Text(widget.title),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              leading: new IconButton(
                icon:
                    new Icon(const IconData(0xe901, fontFamily: "CustomFont")),
                onPressed: () {},
              ),
              actions: <Widget>[
                new IconButton(
                    icon: new Icon(
                        const IconData(0xe900, fontFamily: "CustomFont")),
                    onPressed: () {})
              ],
            ),
            backgroundColor: Colors.transparent,
            body: new Container(
              child: new Stack(
                children: <Widget>[
                  new Padding(
                    padding: new EdgeInsets.only(left: _width / 20),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new SizedBox(
                          height: _height / 30,
                        ),
                        new Text(
                          'Ciara',
                          style: new TextStyle(
                              fontSize: 18.0, color: Colors.white),
                        ),
                        new SizedBox(
                          height: _height / 100,
                        ),
                        new Row(
                          children: <Widget>[
                            new SHLabel(
                              label: 'TRAVELER',
                            ),
                            new SHLabel(
                              label: 'FREELANCER',
                            ),
                          ],
                        ),
                        new SizedBox(
                          height: _height / 50,
                        ),
                        new Row(
                          children: <Widget>[
                            new Text(
                              '',
                              style: new TextStyle(
                                  fontSize: 10.0, color: Colors.white),
                            ),
                            new SizedBox(
                              width: _width / 30,
                            ),
                            new Text(
                              ' ',
                              style: new TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            new SizedBox(
                              width: _width / 30,
                            ),
                            new Text(
                              '',
                              style: new TextStyle(
                                  fontSize: 10.0, color: Colors.white),
                            ),
                            new SizedBox(
                              width: _width / 30,
                            ),
                            new Text(
                              ' ',
                              style: new TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            new SizedBox(
                              width: _width / 30,
                            ),
                            new Text(
                              '',
                              style: new TextStyle(
                                  fontSize: 10.0, color: Colors.white),
                            ),
                            new SizedBox(
                              width: _width / 30,
                            ),
                            new Text(
                              ' ',
                              style: new TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(
                        top: _height / 3.5, left: _width / 2.2),
                    child: new Row(
                      children: <Widget>[
                        new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              'SERVICES',
                              style: new TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            ),
                            new Text(
                              '110',
                              style: new TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        new SizedBox(
                          width: _width / 15,
                        ),
                        new Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Text(
                              '',
                              style: new TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            ),
                            new Text(
                              '',
                              style: new TextStyle(
                                  fontSize: 10.0,
                                  color: Colors.black54,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  new Padding(
                    padding: new EdgeInsets.only(
                        top: _height / 2.8,
                        left: _width / 20,
                        right: _width / 20,
                        bottom: _height / 8),
                    child: new Container(
                      child: new SingleChildScrollView(
                        child: new Text(
                          desc,
                          style: new TextStyle(
                              fontSize: 10.0, fontStyle: FontStyle.normal),
                        ),
                      ),
                    ),
                  ),
                  new Align(
                    alignment: Alignment.bottomCenter,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new Container(
//                          height: _height / 4,
                          margin: EdgeInsets.only(
                              left: _width / 20, right: _width / 20),
                          decoration: new BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                new BoxShadow(
                                    color: Colors.black.withAlpha(70),
                                    offset: const Offset(0.0, -10.0),
                                    blurRadius: 10.0),
                              ],
                              borderRadius: new BorderRadius.all(
                                  new Radius.circular(5.0))),
                          padding: new EdgeInsets.all(_width / 40),
                          child: new Column(
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Text(
                                    'FIND US',
                                    style: new TextStyle(
                                        fontSize: 10.0,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  new Expanded(
                                    child: new Text(
                                      '...',
                                      style: new TextStyle(
                                          fontSize: 10.0,
                                          color: Colors.black54,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.right,
                                    ),
                                  )
                                ],
                              ),
                              new Container(
                                height: _height / 5,
                                child: new ListView.builder(
                                  itemBuilder: (context, index) {
                                    return new Container(
                                        width: _width / 4,
                                        height: _height / 6,
                                        margin: new EdgeInsets.all(_width / 40),
                                        decoration: BoxDecoration(
                                            borderRadius: new BorderRadius.all(
                                                new Radius.circular(5.0)),
                                            image: new DecorationImage(
                                                image: NetworkImage(
                                                    '${list[index%list.length]}'),
                                                fit: BoxFit.cover)));
                                  },
                                  scrollDirection: Axis.horizontal,
                                ),
                              )
                            ],
                          ),
                        ),
                        new SizedBox(
                          height: _height / 40,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SHLabel extends StatelessWidget {
  String label;
  SHLabel({this.label});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Container(
      padding: new EdgeInsets.fromLTRB(10.0, 4.0, 10.0, 4.0),
      child: Text(
        label,
        style: new TextStyle(fontSize: 10.0, color: Colors.white),
      ),
      decoration: new BoxDecoration(
          color: Colors.white.withOpacity(0.4),
          borderRadius: BorderRadius.all(new Radius.circular(8.0))),
      margin: EdgeInsets.only(right: 4.0),
    );
  }
}

class ArcClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    path.lineTo(size.width, 3 * size.height / 4);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
