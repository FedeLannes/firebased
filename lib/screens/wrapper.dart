// @dart=2.9
import 'package:firebased/models/user.dart';
import 'package:firebased/screens/calendar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'authenticate/authenticate.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<MyUser>(context);

    if (user == null) {
      return Authenticate();
    } else {
      return LoadDataFromFireBase();
    }
  }
}
