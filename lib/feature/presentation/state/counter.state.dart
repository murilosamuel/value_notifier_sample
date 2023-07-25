class CounterState {
  int count;
  String? bodyText;
  String? bodyCaption;

  CounterState({
    required this.count,
    this.bodyText,
    this.bodyCaption,
  });

  factory CounterState.initial() {
    return CounterState(
      count: 0,
      bodyText: 'Default text',
      bodyCaption: 'Default caption',
    );
  }

  CounterState copyWith({
    int? count,
    String? bodyText,
    String? bodyCaption,
  }) {
    return CounterState(
      count: count ?? this.count,
      bodyText: bodyText ?? this.bodyText,
      bodyCaption: bodyCaption ?? this.bodyCaption,
    );
  }
}
