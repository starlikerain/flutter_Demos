import 'package:flutter/material.dart';
import 'dart:async';

class StreamDemoHome extends StatefulWidget {
  @override
  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('title'),
      ),
      body: StreamDemo(),
    );
  }
}

class StreamDemo extends StatefulWidget {
  @override
  _StreamDemoState createState() => _StreamDemoState();
}

class _StreamDemoState extends State<StreamDemo> {
  StreamSubscription myStreamSubscription;
  StreamController myStreamController;
  StreamSink mySink;
  String myData = '...';

  @override
  void dispose() {
    myStreamController.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

//    Stream<String> myStream = Stream.fromFuture(fetchData());
    myStreamController = StreamController.broadcast();
    mySink = myStreamController.sink;

    myStreamSubscription = myStreamController.stream.listen(onData);

    myStreamController.stream.listen(onData);
  }

  void onData(data) {
    setState(() {
      myData = data;
    });
    debugPrint('This is function onData -> $data');
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 2));

    return 'I\'m a String from future';
  }

  void addSubscription() async {
    String str = await fetchData();
//    myStreamController.add(str);
    mySink.add(str);
  }

  void pauseSubscription() {
    debugPrint('myStreamSubscription.pause();');
    myStreamSubscription.pause();
  }

  void resumeSubscription() {
    debugPrint('myStreamSubscription.resume();');
    myStreamSubscription.resume();
  }

  void cancelSubscription() {
    debugPrint('myStreamSubscription.cancel();');
    myStreamSubscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
//          Text('$myData'),
          StreamBuilder(
            stream: myStreamController.stream,
            initialData: '...',
            builder: (context, snapShot) {
              return Text('${snapShot.data}');
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                onPressed: addSubscription,
                child: Text('Add'),
              ),
              FlatButton(
                onPressed: pauseSubscription,
                child: Text('Pause'),
              ),
              FlatButton(
                onPressed: resumeSubscription,
                child: Text('resume'),
              ),
              FlatButton(
                onPressed: cancelSubscription,
                child: Text('cancel'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
