import 'package:flutter/material.dart';


//goal for layout: Display city info in center
//Display weather info below that

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  Map<String,String> forecast = {
    "name": "today",
    "temperature": "35",
    "shortForecast": "Snowy",
    "detailedForecast": "Snowy all day",
    "windSpeed": "10",
    "windDirection": "SE",
    "isDaytime": "true",
    "probabilityOfPercipitation": "100"

  };

  Map<String, String> location = {
    "city": "Bend",
    "state": "Oregon",
    "zip": "97702"
  };

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    //return Scaffold(body: Text(location["city"]!));
    return const Scaffold(body: Center(
      child: Column(
        //mainAxisAlignment: center
        children: [
        BoxPlaceholder(height: 100, width: 300, text: "Weather App",),
        BoxPlaceholder(height: 100, width: 300, padding: 20, text: "stuff"),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BoxPlaceholder(height: 100, width: 100, text: "temperature"),
            BoxPlaceholder(height: 100, width: 100, text: "wind"), 
            BoxPlaceholder(height: 100, width: 100, text: "forcast") 
          ],
        )
        ]
      )
    ));
  }
}

class BoxPlaceholder extends StatelessWidget {
  final double? height;
  final double? width;
  final double padding;
  final String text;
  final Color color;

  const BoxPlaceholder({
    super.key,
    required this.height,
    required this.width,
    this.padding = 0,
    this.text = "",
    this.color = Colors.black
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(padding),
      //child: SizedBox(height: height, width: width, child: Placeholder(color: Colors.indigo, child: Center(child: Text(text))),
      child: SizedBox(height: height, width: width, child: Center(child: Text(text)),

    ));
  }
}
