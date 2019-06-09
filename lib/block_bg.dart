import 'dart:async';

import 'package:flutter/material.dart';

class CounterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlockProvider myBloc = CounterProvider.of(context).bloc;

    return Center(
      child: StreamBuilder(
        initialData: 0,
        stream: myBloc.counte,
        builder: (context, snapShot) {
          return ActionChip(
            label: Text('${snapShot.data}'),
            onPressed: () {
              myBloc.counter.add(1);
            },
          );
        },
      ),
    );
  }
}

class CounterActionButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BlockProvider myBloc = CounterProvider.of(context).bloc;

    return FloatingActionButton(
      onPressed: () {
        myBloc.counter.add(1);
      },
      child: Icon(Icons.add),
    );
  }
}

/* InheritedWidget */
class CounterProvider extends InheritedWidget {
  final Widget child;
  final BlockProvider bloc;

  const CounterProvider({
    Key key,
    @required this.child,
    @required this.bloc,
  })  : assert(child != null),
        super(key: key, child: child);

  static CounterProvider of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(CounterProvider) as CounterProvider;
  }

  @override
  bool updateShouldNotify(CounterProvider old) {
    return true;
  }
}

/* bloc data area */
class BlockProvider {
  int _count = 0;
  StreamController _counterActionController = StreamController<int>();
  StreamSink<int> get counter => _counterActionController.sink;

  StreamController _counterController = StreamController<int>();
  Stream<int> get counte => _counterController.stream;

  BlockProvider() {
    _counterActionController.stream.listen(onData);
  }

  void onData(data) {
    _count += data;

    _counterController.add(_count);
  }

  void dispose() {
    _counterActionController.close();
    _counterController.close();
  }

  void log() {
    print('a');
  }
}
