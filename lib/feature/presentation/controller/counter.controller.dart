import 'package:flutter/cupertino.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:value_notifier_sample/feature/presentation/state/counter.state.dart';

class CounterController {
  ValueNotifier<CounterState> counterState =
      ValueNotifier(CounterState.initial());

  void increment() {
    var current = counterState.value;
    var newState = counterState.value.copyWith(
      count: current.count + 1,
      bodyText: loremIpsum(words: 2),
      bodyCaption: loremIpsum(words: 10),
    );
    counterState.value = newState;
  }
}
