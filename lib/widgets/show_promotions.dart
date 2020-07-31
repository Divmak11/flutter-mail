import 'package:flutter/material.dart';
class ShowPromotionMails extends StatelessWidget {

  final String day;
  ShowPromotionMails({this.day});

  Widget makeMailListTile(String header,String main,String subtitle,String time,String imagePath) {
    return Container(
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
                      'assets/images/emp3.jpg'),
                  SizedBox(height: 10,),
                  makeMailListTile(
                      'Mesa Varde',
                      'Fwd: Billing',
                      'We are a community of thousand of lectures and videos blaah',
                      '11:00 am',
                      'assets/images/emp4.png',
                     ),
                  SizedBox(height: 10,),
                  makeMailListTile(
                      'John Hopkins',
                      'Patient Report ',
                      'Hello Mr Divyam. You repory of CBC is ready to get transferred!',
                      '12:00 am',
                      'assets/images/emp1.png',
                     ),
                  SizedBox(height: 10,),
                  makeMailListTile(
                      'HDFC Banks',
                      'New Account',
                      'We are a community of thousand of lectures and videos blaah',
                      '9:00 am',
                      'assets/images/emp2.png'),
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}
