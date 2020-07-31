import 'package:flutter/material.dart';

class ShowCustomModalBottom {


  Widget buildListTile(String text,IconData icon)//can also add tabhandler to handle onclick
  {
    return ListTile(
      leading: Icon(icon,size: 26,color: Colors.black54,),
      title: Text(
        text,style: TextStyle(
        fontSize: 16,
        color: Colors.black87,
        fontWeight: FontWeight.bold
      ),
      ),
      onTap: () {},
    );
  }
  void showCustomModalSheet(BuildContext context) {
    showModalBottomSheet(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25.0), topRight: Radius.circular(25.0)),
        ),
        isScrollControlled: true,
        context: (context),
        builder: (ctx) {
          return DraggableScrollableSheet(
              maxChildSize: 0.7,
              initialChildSize: 0.45,
              expand: false,
              builder: (_, controller) {
                return Padding(
                  padding: const EdgeInsets.only(right: 12.0, left: 12),
                  child: ListView(
                    controller: controller,
                    children: <Widget>[
                      SizedBox(
                        height: 8,
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 5,
                          width: 80,
                          child: Divider(
                            thickness: 5,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            CircleAvatar(
                              radius: 22,
                              backgroundImage:
                                  AssetImage('assets/images/dp.jpg'),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                                child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text('Divyam',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black)),
                                Text(
                                  'div.makar@gmail.com',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.grey),
                                  overflow: TextOverflow.ellipsis,
                                )
                              ],
                            )),
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  shape: BoxShape.circle,
                                  color: Colors.blue),
                              child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    'C',
                                    style: TextStyle(color: Colors.white),
                                  )),
                            ),
                            SizedBox(
                              width: 20,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 30,),
                      buildListTile('Inbox', Icons.email),
                      buildListTile('Social', Icons.people),
                      buildListTile('Promotions', Icons.message),
                      buildListTile('Updates', Icons.error),
                      Divider(thickness: 1,),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.only(left: 12),
                        child: Text('All Labels'),
                      ),
                      buildListTile('Starred', Icons.star),
                      buildListTile('Outbox', Icons.present_to_all),
                      buildListTile('Draft', Icons.drafts),
                      buildListTile('Bin', Icons.restore_from_trash),


                    ],
                  ),
                );
              });
        });
  }
}
