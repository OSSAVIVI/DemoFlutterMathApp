import 'package:flutter/material.dart';
//import 'package:flutter_html_view/flutter_html_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(title: 'Math Tao'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int MAX_NUM_PAGES = 5;
  int _counter = -1;
  Text _pageSymbol = Text("?",
      style: TextStyle(
          fontSize: 256.0, fontWeight: FontWeight.bold, color: Colors.white));
  Text _pageTitle = Text("What are the mathematical constants?",
      style: TextStyle(
          fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white));
  Text _pageText = Text(
      "A constant, sometimes also called a \"mathematical constant,\" is any well-defined real number which is significantly interesting in some way. A function, equation, etc., is said to \"be constant\" (or be a constant function) if it always assumes the same value independent of how its parameters are varied. Certain constants are known to many decimal digits and recur throughout many diverse areas of mathematics, often in unexpected and surprising places. Other constants are more specialized and may be known to only a few digits. Although there are plenty of rational constants, such as 0 (whose product with every other number is itself), the \"mathematical constants\" referred to here are typially irrational.",
      style: TextStyle(
          fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.white));
  String _pageGraphic = 'images/yinyang.png';
  Text _pageBio = Text(
      "The Tao that can be told is not the eternal Tao; the name that can be named is not the eternal name. ~ Lao Tzu, Tao Te Ching",
      style: TextStyle(
          fontSize: 16.0, fontWeight: FontWeight.normal, color: Colors.white));
  String _pageGraphic2 = 'images/galaxy.jpg';
  String _pageGraphic3 = 'images/hypercube.gif';
  String _pageHero = 'images/floweroflife.png';

  void _updateContent(String symbol, String title, String text, String graphic,
      String graphic2, String graphic3, String bio, String hero) {
    _pageSymbol = Text(symbol,
        style: TextStyle(
            fontSize: 256.0, fontWeight: FontWeight.bold, color: Colors.white));
    _pageTitle = Text(title,
        style: TextStyle(
            fontSize: 32.0, fontWeight: FontWeight.bold, color: Colors.white));
    _pageText = Text(text,
        style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
            color: Colors.white));
    _pageGraphic = graphic;
    _pageGraphic2 = graphic2;
    _pageGraphic3 = graphic3;
    _pageBio = Text(bio,
        style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.normal,
            color: Colors.white));
    _pageHero = hero;
  }

  void _prevScreen() {
    setState(() {
      if (_counter == 0) {
        String desc1 =
            "A constant, sometimes also called a \"mathematical constant,\" is any well-defined real number which is significantly interesting in some way. A function, equation, etc., is said to \"be constant\" (or be a constant function) if it always assumes the same value independent of how its parameters are varied. Certain constants are known to many decimal digits and recur throughout many diverse areas of mathematics, often in unexpected and surprising places. Other constants are more specialized and may be known to only a few digits. Although there are plenty of rational constants, such as 0 (whose product with every other number is itself), the \"mathematical constants\" referred to here are typially irrational.";
        String desc2 =
            "The Tao that can be told is not the eternal Tao; the name that can be named is not the eternal name. ~ Lao Tzu, Tao Te Ching";
        _updateContent(
            "?",
            "What are the mathematical constants?",
            desc1,
            'images/yinyang.png',
            'images/galaxy.jpg',
            'images/hypercube.gif',
            desc2,
            'images/floweroflife.png');
      }
      if (_counter == 1) {
        String desc1 =
            "π (Pi) is the ratio between the circumference and diameter of a circle. The numeric value of π is approximately 3.1415926536 (usually shortened to 3.14) and is an irrational transcendental number.";
        String desc2 =
            "One of the major contributions Archimedes made to mathematics was his method for approximating the value of pi. It had long been recognized that the ratio of the circumference of a circle to its diameter was constant, and a number of approximations had been given up to that point in time by the Babylonians, Egyptians, and Chinese.";
        _updateContent(
            "π",
            "Archimedes' Constant π",
            desc1,
            'images/pi.gif',
            'images/pi2.png',
            'images/hypercube.gif',
            desc2,
            'images/archimedes.jpg');
      }
      if (_counter == 2) {
        String desc1 =
            "Euler's number \u212F is the exponential growth constant and is the base of the natural logarithm: the unique number whose natural logarithm is equal to one. The numeric value of \u212F is approximately 2.7182818284 (notice it's 2.7 followed twice by 1828) and is an irrational transcendental number. Euler's identity (below) has been described as \"the most beautiful theorem in mathematics\".";
        String desc2 =
            "Leonhard Euler discovered the constant \u212F in the early 18th century while trying to solve a problem related to compound interest first proposed by another mathematician, Jacob Bernoulli. ";
        _updateContent("\u212F", "Euler's Number \u212F", desc1, 'images/e.png',
            'images/e2.png', 'images/hypercube.gif', desc2, 'images/euler.jpg');
      }
      if (_counter == 3) {
        String desc1 =
            "The imaginary unit's core property is that \u2148\u00B2 = −1. The term \"imaginary\" is used because there is no real number having a negative square.";
        String desc2 =
            "Rafael Bombelli was a 16th-century Italian mathematician, author of treatise on algebra, and is a central figure in the understanding of imaginary numbers. Although Euler was the first to give the square root of -1 the symbol \u2148, Rafael introduced the rhetoric that preceded the representative symbols +i and -i and described how they both worked in his 1572 book, \'L'Algebra\'";
        _updateContent(
            "\u2148",
            "The Imaginary Unit \u2148",
            desc1,
            'images/i.png',
            'images/i2.png',
            'images/hypercube.gif',
            desc2,
            'images/rafael.jpeg');
      }
      if (_counter == 4) {
        String desc1 =
            "The square root of 2, often known as root 2, radical 2, or Pythagoras' constant, is the positive algebraic number that, when multiplied by itself, gives the number 2. It is more precisely called the principal square root of 2, to distinguish it from the negative number with the same property. Geometrically the square root of 2 is the length of a diagonal across a square with sides of one unit of length; this follows from the Pythagorean theorem. It was probably the first number known to be irrational. Its numerical value truncated to 65 decimal places is: 1.41421356237309504880168872420969807856967187537694807317667973799... The quick approximation 99/70 (≈ 1.41429) for the square root of two is frequently used. Despite having a denominator of only 70, it differs from the correct value by less than 1/10,000.";
        String desc2 = "";
        _updateContent(
            "\u221A2",
            "Pythagoras' Constant \u221A2",
            desc1,
            'images/radtwo.png',
            'images/radtwo2.png',
            'images/radtwo3.gif',
            desc2,
            'images/pythagoras.jpg');
      }
      if (_counter == 5) {
        String desc1 =
            "In mathematics, specifically bifurcation theory, the Feigenbaum constants are two mathematical constants which both express ratios in a bifurcation diagram for a non-linear map. They are named after the physicist Mitchell J. Feigenbaum. ";
        String desc2 =
            "Mitchell Jay Feigenbaum was an American mathematical physicist whose pioneering studies in chaos theory led to the discovery of the Feigenbaum constants. the Feigenbaum constant is the ratio between the diameters of successive circles on the real axis in the complex plane (see animation below).";
        _updateContent(
            "αδ",
            "The Feigenbaum Constants α and δ",
            desc1,
            'images/feig.gif',
            'images/feig3.png',
            'images/feig2.gif',
            desc2,
            'images/feigenbaum.jpeg');
      }
      if (_counter >= 0) {
        _counter--;
      }
    });
  }

  void _nextScreen() {
    setState(() {
      if (_counter == -1) {
        String desc1 =
            "π (Pi) is the ratio between the circumference and diameter of a circle. The numeric value of π is approximately 3.1415926536 (usually shortened to 3.14) and is an irrational transcendental number.";
        String desc2 =
            "One of the major contributions Archimedes made to mathematics was his method for approximating the value of pi. It had long been recognized that the ratio of the circumference of a circle to its diameter was constant, and a number of approximations had been given up to that point in time by the Babylonians, Egyptians, and Chinese.";
        _updateContent(
            "π",
            "Archimedes' Constant π",
            desc1,
            'images/pi.gif',
            'images/pi2.png',
            'images/hypercube.gif',
            desc2,
            'images/archimedes.jpg');
      }
      if (_counter == 0) {
        String desc1 =
            "Euler's number \u212F is the exponential growth constant and is the base of the natural logarithm: the unique number whose natural logarithm is equal to one. The numeric value of \u212F is approximately 2.7182818284 (notice it's 2.7 followed twice by 1828) and is an irrational transcendental number. Euler's identity (below) has been described as \"the most beautiful theorem in mathematics\".";
        String desc2 =
            "Leonhard Euler discovered the constant \u212F in the early 18th century while trying to solve a problem related to compound interest first proposed by another mathematician, Jacob Bernoulli. ";
        _updateContent("\u212F", "Euler's Number \u212F", desc1, 'images/e.png',
            'images/e2.png', 'images/hypercube.gif', desc2, 'images/euler.jpg');
      }
      if (_counter == 1) {
        String desc1 =
            "The imaginary unit's core property is that \u2148\u00B2 = −1. The term \"imaginary\" is used because there is no real number having a negative square.";
        String desc2 =
            "Rafael Bombelli was a 16th-century Italian mathematician, author of treatise on algebra, and is a central figure in the understanding of imaginary numbers. Although Euler was the first to give the square root of -1 the symbol \u2148, Rafael introduced the rhetoric that preceded the representative symbols +i and -i and described how they both worked in his 1572 book, \'L'Algebra\'";
        _updateContent(
            "\u2148",
            "The Imaginary Unit \u2148",
            desc1,
            'images/i.png',
            'images/i2.png',
            'images/hypercube.gif',
            desc2,
            'images/rafael.jpeg');
      }
      if (_counter == 2) {
        String desc1 =
            "The square root of 2, often known as root 2, radical 2, or Pythagoras' constant, is the positive algebraic number that, when multiplied by itself, gives the number 2. It is more precisely called the principal square root of 2, to distinguish it from the negative number with the same property. Geometrically the square root of 2 is the length of a diagonal across a square with sides of one unit of length; this follows from the Pythagorean theorem. It was probably the first number known to be irrational. Its numerical value truncated to 65 decimal places is: 1.41421356237309504880168872420969807856967187537694807317667973799... The quick approximation 99/70 (≈ 1.41429) for the square root of two is frequently used. Despite having a denominator of only 70, it differs from the correct value by less than 1/10,000.";
        String desc2 = "";
        _updateContent(
            "\u221A2",
            "Pythagoras' Constant \u221A2",
            desc1,
            'images/radtwo.png',
            'images/radtwo2.png',
            'images/hypercube.gif',
            desc2,
            'images/pythagoras.jpg');
      }
      if (_counter == 3) {
        String desc1 =
            "In mathematics, specifically bifurcation theory, the Feigenbaum constants are two mathematical constants which both express ratios in a bifurcation diagram for a non-linear map. They are named after the physicist Mitchell J. Feigenbaum. ";
        String desc2 =
            "Mitchell Jay Feigenbaum was an American mathematical physicist whose pioneering studies in chaos theory led to the discovery of the Feigenbaum constants. the Feigenbaum constant is the ratio between the diameters of successive circles on the real axis in the complex plane (see animation below).";
        _updateContent(
            "αδ",
            "The Feigenbaum Constants α and δ",
            desc1,
            'images/feig.gif',
            'images/feig3.png',
            'images/feig2.gif',
            desc2,
            'images/feigenbaum.jpeg');
      }
      if (_counter <= (MAX_NUM_PAGES - 2)) {
        _counter++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title,
            style: TextStyle(
                fontSize: 64.0,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(_pageSymbol.data,
                    style: TextStyle(
                        fontSize: 256.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Text(_pageTitle.data,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 32.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(_pageText.data,
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.white)),
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Image(image: AssetImage(_pageGraphic))),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Text(_pageBio.data,
                      style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.normal,
                          color: Colors.white)),
                ),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Image(image: AssetImage(_pageGraphic2))),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Image(image: AssetImage(_pageGraphic3))),
                Container(
                    padding: EdgeInsets.all(10),
                    child: Image(image: AssetImage(_pageHero))),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment(-0.8, 1.0),
            child: FloatingActionButton(
              onPressed: _prevScreen,
              tooltip: 'Prev',
              child: new LayoutBuilder(builder: (context, constraint) {
                return new Icon(Icons.arrow_back,
                    size: constraint.biggest.height);
              }),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: _nextScreen,
              tooltip: 'Next',
              child: new LayoutBuilder(builder: (context, constraint) {
                return new Icon(Icons.arrow_forward,
                    size: constraint.biggest.height);
              }),
            ),
          ),
        ],
      ),
    );
  }
}
