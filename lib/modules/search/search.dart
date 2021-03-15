import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_app/shared/components/constants.dart';

class SearchScreen extends StatefulWidget
{
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen>
{
  String s = 'data';

  @override
  void initState()
  {
    super.initState();

    streamCounter().listen((event)
    {
      print(event);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            s,
            style: TextStyle(
              fontSize: 30.0,
            ),
          ),
          defaultButton(
            press: dataClick,
            text: 'get data',
          ),
        ],
      ),
    );
  }

  void dataClick() async
  {
    var a = await fetchUserOrder();
    print(a);

    // await fetchUserOrder().then((value)
    // {
    //   print(value);
    // });

    // if (counter == 10)
    // {
    //   controller.close(); // Ask stream to shut down and tell listeners.
    // } else
    // {
    //   counter++;
    //   controller.add(counter);
    // }
  }

  Future<String> fetchUserOrder()
  {
    return Future.delayed(
      Duration(
        seconds: 5,
      ),
      ()
      {
        return 'future order';
      },
    );
  }

  String getUserOrder() {
    s = 'order';
    return s;
  }

  StreamController<int> controller;
  int counter = 0;

  Stream<int> streamCounter()
  {
    controller = StreamController<int>(
      onListen: listenStream,
      onPause: pauseStream,
      onResume: resumeStream,
      onCancel: cancelStream,
    );

    return controller.stream;
  }

  void listenStream()
  {
    print('listen');
  }

  void cancelStream()
  {
    print('cancel');
  }

  void pauseStream()
  {
    print('pause');
  }

  void resumeStream()
  {
    print('resume');
  }
}