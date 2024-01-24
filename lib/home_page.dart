import 'package:flutter/material.dart';
import 'package:inherited_widget/api_provider.dart';
import 'package:inherited_widget/datetime_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = 'Tap the Screen';
  ValueKey _key = const ValueKey<String?>(null);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(APIProvider.of(context).api.dateAndTime ?? ""),
        centerTitle: true,
      ),
      body: GestureDetector(
          onTap: () async {
            final api = APIProvider.of(context).api;
            final timeAndDate = await api.getDateAndTime();
            setState(() {
              _key = ValueKey(timeAndDate);
            });
          },
          child: Center(
            child: DateTimeWidget(key: _key),
          )),
    );
  }
}
