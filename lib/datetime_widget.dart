import 'package:flutter/material.dart';
import 'package:inherited_widget/api_provider.dart';

class DateTimeWidget extends StatelessWidget {
  const DateTimeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final api = APIProvider.of(context).api;
    return Text(
      api.dateAndTime ?? 'Tap on Screen to get current Date and Time.',
    );
  }
}
