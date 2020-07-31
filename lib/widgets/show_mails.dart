import 'package:flutter/material.dart';
import 'package:fluttermail/pages/show_mail_item.dart';
import '../providers/mail_body.dart';
class ShowMailsCard extends StatelessWidget {

  final String day;
  ShowMailsCard({this.day});

  Widget makeMailListTile(String header,String main,String subtitle,String time,String imagePath,String body,BuildContext context) {
   return InkWell(
     onTap: () {
       Navigator.of(context).pushNamed(
           ShowMailItem.routename,
           arguments: MailBody(
             header: header,
             main: main,
             subtitle: subtitle,
             time: time,
             imagePath: imagePath,
             bodyofmail: body
           ));
     },
     child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            CircleAvatar(
              radius: 22,
              backgroundImage:
              AssetImage(imagePath),
            ),
            SizedBox(width: 20,),
            Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      header,
                      style: TextStyle(fontSize: 15,color: Colors.black54),
                    ),
                    Text(
                        main,
                        style: TextStyle(fontSize: 18,color: Colors.black)),
                    Text(
                        subtitle,
                        style: TextStyle(fontSize: 12,color: Colors.grey),
                      overflow: TextOverflow.ellipsis,
                    )
                  ],
                )),
            Text(time,style: TextStyle(fontSize: 12,color: Colors.grey))
          ],
        ),
      ),
   );
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(right:10.0,left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(day,style: TextStyle(fontSize: 15,color: Colors.grey)),
              Icon(Icons.done_all,color: Colors.grey,)
            ],
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: <Widget>[
                  makeMailListTile(
                      'Google Docs',
                      'Submission of Report',
                      'Helo Brian We need a fresh new report on submission queries',
                      '10:54 am',
                      'assets/images/emp1.png',
                      'THis is Google Docs mail Body Wow',
                  context),
                  SizedBox(height: 10,),
                  makeMailListTile(
                      'Mesa Varde',
                      'Fwd: Billing',
                      'We are a community of thousand of lectures and videos blaah',
                      '11:00 am',
                      'assets/images/emp2.png',
                      'THis is Mesa Varde mail Body Wow. \nNow I like to show u that for some\n'
                          '  Gmail is a free email service developed by Google. \nUsers can access Gmail on the web and using third-party programs \n that synchronize email content through POP or IMAP protocols.\n '
                          'Gmail started as a limited beta release on April 1,\n 2004 and ended its testing phase on July 7, 2009. At launch, Gmail had an initial storage capacity offer of one gigabyte per user, '
                          'a significantly higher amount than competitors offered at the time. Today, the service comes with 15 gigabytes of storage. Users can receive emails up'
                          ' to 50 megabytes in size, including attachments, while they can send emails up to 25 megabytes. In order to send larger files, users can insert files from Google Drive into the message.'
                          ' Gmail has a search-oriented interface and a "conversation view" similar to an Internet forum. The service is notable among website developers for its early adoption of Ajax.',
                      context),
                  SizedBox(height: 10,),
                  makeMailListTile(
                      'John Hopkins',
                      'Patient Report ',
                      'Hello Mr Divyam. You repory of CBC is ready to get transferred!',
                      '12:00 am',
                      'assets/images/emp3.jpg',
                      'THis is John Hopkins mail Body Wow',
                      context),
                  SizedBox(height: 10,),
                  makeMailListTile(
                      'HDFC Banks',
                      'New Account',
                      'We are a community of thousand of lectures and videos blaah',
                      '9:00 am',
                      'assets/images/emp4.png',
                      'THis is HDFC Banks mail Body Wow',
                      context),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
