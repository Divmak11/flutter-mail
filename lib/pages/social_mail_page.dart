import 'package:flutter/material.dart';
import '../widgets/show_social_mails.dart';
class SocialMail extends StatefulWidget {
  @override
  _SocialMailState createState() => _SocialMailState();
}

class _SocialMailState extends State<SocialMail> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25.0, left: 8, right: 8,bottom: 5),
      child: ListView(
        children: <Widget>[
          ShowSocialMails(day: 'Today'),
          SizedBox(height: 20,),
          ShowSocialMails(day: 'Yesterday',)
        ],
      ),
    );
  }
}
