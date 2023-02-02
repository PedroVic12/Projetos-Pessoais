import 'package:bot_delivery_frontend/app/bot_delivery_app.dart';
import 'package:flutter/material.dart';

import '../../core/ui/widgets/delivery_appbar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppBar(),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}
