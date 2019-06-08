import 'package:flutter/material.dart';

import 'mooc_data/recordingData.dart';

class RecordingTranslate extends StatefulWidget {
  @override
  _RecordingTranslateState createState() => _RecordingTranslateState();
}

class _RecordingTranslateState extends State<RecordingTranslate> {
  List<TranslateRecordData> _items = [
    TranslateRecordData(
      'title1',
      'subTitle1',
      true,
    ),
    TranslateRecordData(
      'title1',
      'subTitle1',
      true,
    ),
    TranslateRecordData(
      'title1',
      'subTitle1',
      false,
    ),
    TranslateRecordData(
      'title1',
      'subTitle1',
      true,
    ),
    TranslateRecordData(
      'title1',
      'subTitle1',
      true,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return _renderListItems(index);
        },
      ),
    );
  }

  Widget _renderListItems(index) {
    return Card(
      margin: EdgeInsets.only(
        right: 8,
        left: 8,
        bottom: 1,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0.0))),
      child: Container(
        padding: EdgeInsets.only(
          left: 15,
          top: 15,
          bottom: 15,
        ),
        height: 80.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _flexibleItemBuilder(index),
            _enshrineBuilder(index),
          ],
        ),
      ),
    );
  }

  Widget _flexibleItemBuilder(int index) {
    return Flexible(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            _items[index].title,
            style: Theme.of(context).textTheme.title,
          ),
          Text(
            _items[index].subTitle,
            style: Theme.of(context).textTheme.subhead,
          ),
        ],
      ),
    );
  }

  Widget _enshrineBuilder(index) {
    var _index = index;

    return IconButton(
      onPressed: () {
        this.setState(() {
          _items[_index].enshrine = !_items[_index].enshrine;
        });
      },
      icon: Icon(
        _items[index].enshrine ? Icons.star : Icons.star_border,
      ),
      color: _items[index].enshrine ? Colors.yellow[600] : Colors.grey[700],
    );
  }
}
