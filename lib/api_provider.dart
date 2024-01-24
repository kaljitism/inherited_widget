import 'package:flutter/cupertino.dart';
import 'package:inherited_widget/api.dart';
import 'package:uuid/uuid.dart';

class APIProvider extends InheritedWidget {
  final API api;
  final String uuid;

  APIProvider({
    super.key,
    required this.api,
    required super.child,
  }) : uuid = const Uuid().v4();

  @override
  bool updateShouldNotify(covariant APIProvider oldWidget) {
    return uuid != oldWidget.uuid;
  }

  static APIProvider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<APIProvider>()!;
  }
}
