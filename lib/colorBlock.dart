import 'dart:async';

import 'package:flutter/material.dart';

enum ColorEvent { eventRed, eventGreen }

class ColorBlock {
  Color _color = Colors.red;

  final _inputEventController = StreamController<ColorEvent>();
  StreamSink<ColorEvent> get inputEventSink => _inputEventController.sink;

  final _outputStataController = StreamController<Color>();
  Stream<Color> get outputStateStream => _outputStataController.stream;

  void _mapEventToState(ColorEvent event) {
    if (event == ColorEvent.eventGreen) {
      _color = Colors.green;
    } else if (event == ColorEvent.eventRed) {
      _color = Colors.red;
    } else {
      throw Exception('Wrong Event Type');
    }

    _outputStataController.sink.add(_color);
  }

  ColorBlock() {
    _inputEventController.stream.listen(_mapEventToState);
  }

  void dispose() {
    _inputEventController.close();
    _outputStataController.close();
  }
}
