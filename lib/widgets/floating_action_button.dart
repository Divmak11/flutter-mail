import 'package:flutter/material.dart';
import '../pages/compose_new_mail.dart';
class CustomFloatingActionBotton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

        Navigator.of(context).push(MaterialPageRoute(
          fullscreenDialog: true,
            builder: (ctx)=> ComposeMail())
        );
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black38,
              blurRadius: 8.0,
            ),
          ],
          color: Colors.white,
          shape: BoxShape.circle,
        ),
        child: Icon(Icons.add,size: 40,color: Colors.red,),
      ),
    );
  }
}
/* Future REFERNCE FOR BOXHSHADOW Offset

boxShadow: [
      BoxShadow(
        color: Colors.red,
        blurRadius: 20.0, // has the effect of softening the shadow
        spreadRadius: 5.0, // has the effect of extending the shadow
        offset: Offset(
          10.0, // horizontal, move right 10
          10.0, // vertical, move down 10
        ),
      )
 */