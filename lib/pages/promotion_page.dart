import 'package:flutter/material.dart';
import '../widgets/show_promotions.dart';
class PromotionMail extends StatefulWidget {
  @override
  _PromotionMailState createState() => _PromotionMailState();
}

class _PromotionMailState extends State<PromotionMail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 8, right: 8,bottom: 5),
      child: ListView(
        children: <Widget>[
          ShowPromotionMails(day: 'Today'),
          SizedBox(height: 20,),
          ShowPromotionMails(day: 'Yesterday',)
        ],
      ),
    );
  }
}
