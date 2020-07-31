import 'package:flutter/material.dart';
import 'package:fluttermail/widgets/show_mails.dart';

class PrimaryMail extends StatefulWidget {
  @override
  _PrimaryMailState createState() => _PrimaryMailState();
}

class _PrimaryMailState extends State<PrimaryMail> {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 8, right: 8,bottom: 5),
      child: ListView(
        children: <Widget>[
            ShowMailsCard(day: 'Today'),
            SizedBox(height: 20,),
            ShowMailsCard(day: 'Yesterday',)
        ],
      ),
    );
  }
}
