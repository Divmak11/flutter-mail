import 'package:flutter/material.dart';
import '../providers/mail_body.dart';
class ShowMailItem extends StatelessWidget {
  MailBody mailData;
  static const routename='/mail-item';

  Widget buildMailTypeCard(BuildContext context,String data) {
    return Container(
      height: 400,
      width: MediaQuery.of(context).size.width,
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
        ),
        elevation: 8,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: <Widget>[
              Positioned(
                left: 5,
                top: 5,
                child:  Text(data,
                    style: TextStyle(fontSize: 18,color: Colors.black))
                ,),
            ],
          ),
        ),
      ),
    );
  }
  
  Widget buildMaterialCard(String text)
  {
    return Container(
      height: 50,
      width: 100,
      child: Card(
        elevation: 6,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
        ),
        child: FlatButton(onPressed: () {}, child: Text(text,style: TextStyle(
          fontSize: 15,
          color: Colors.black87
        ),)
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    mailData = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,

          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 20,),
                  Row(
                    children: <Widget>[
                      IconButton(icon: Icon(Icons.arrow_back), onPressed: () {
                        Navigator.of(context).pop();
                      }),
                      Spacer(flex: 20),
                      IconButton(icon: Icon(Icons.archive), onPressed: () {
                      }),
                      Spacer(flex: 1),
                      IconButton(icon: Icon(Icons.delete), onPressed: () {
                      }),
                      Spacer(flex: 1),
                      IconButton(icon: Icon(Icons.star_border), onPressed: () {
                      }),
                      Spacer(flex: 1),
                      IconButton(icon: Icon(Icons.more_vert), onPressed: () {
                      }),
                    ],
                  ),
                  SizedBox(height: 30,),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundImage: AssetImage(mailData.imagePath),
                      radius: 25
                    ),
                    title: Text(mailData.header),
                    subtitle: Text(mailData.main),
                    trailing: Text(mailData.time),
                  ),
                  buildMailTypeCard(context,mailData.bodyofmail),

                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                buildMaterialCard('Reply'),
                buildMaterialCard('Reply All'),
                buildMaterialCard('Forward')
              ],
            )
          ],
        ),
      ),
    );
  }
}
