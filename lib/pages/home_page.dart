import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttermail/pages/promotion_page.dart';
import 'package:fluttermail/pages/social_mail_page.dart';
import 'package:fluttermail/widgets/show_social_mails.dart';
import '../helpers/show_modal_sheet.dart';
import '../widgets/floating_action_button.dart';
import '../widgets/primary_mail_item.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var defColorRed=Colors.redAccent;
  var defColorWhite= Colors.white;

  Color color1;
  Color color2;
  Color color3 ;
  var isSearch=false;
  Widget page;


  @override
    void initState() {
    color1 = defColorWhite;
    color2=defColorRed;
    color3 =defColorRed;
    page=PrimaryMail();

    super.initState();
    }

// perform actions and change color when clicked on containers
  void selectContainer(int id)
  {
    if(id==1)
      {

        setState(() {
          page=PrimaryMail();
          color1=defColorWhite;
          color2= defColorRed;
          color3= defColorRed;
        });
      }
    else
    if(id==2)
    {
      setState(() {
        page=SocialMail();
        color1=defColorRed;
        color2= defColorWhite;
        color3= defColorRed;
      });
    }
    else
    if(id==3)
    {
      setState(() {
        page=PromotionMail();
        color1=defColorRed;
        color2= defColorRed;
        color3= defColorWhite;
      });
    }
  }


  //Make Custom circular shaped containers
  Widget makeCircRectContainer(int id,String text,Color backcolor,IconData icon) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
          color: backcolor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          bottomLeft:  Radius.circular(20),
          topRight:  Radius.circular(20),
          bottomRight:  Radius.circular(20),),
        shape: BoxShape.rectangle
      ),
      child: FlatButton.icon(onPressed: () {
                    selectContainer(id);},
          icon: Icon(icon), label: Text(text,style: TextStyle(fontSize: 16),))
    );
  }


  Widget buildForSearch(bool value) {
    if(value)
      {
        return Container(
          height: 80,
          width: 250,
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Type to Search',
              fillColor: Colors.white)
          ),
        );
      }
    else
      return  Container(
        width: 220,
        child: ListTile(
          leading:  CircleAvatar(
            radius: 22,
            backgroundImage: AssetImage('assets/images/dp.jpg'),
          ),
          title: Text('Divyam',style: TextStyle(fontSize: 20,color: Colors.black),),
          subtitle:  Container(
              child: Text('div.makar@gmail.com',style: TextStyle(fontSize: 15),overflow: TextOverflow.ellipsis,)),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      body: SingleChildScrollView(
        child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 25,left: 8,right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    icon: Icon(Icons.apps,size: 30,color: Colors.white,),
                    onPressed:   (){
                      ShowCustomModalBottom().showCustomModalSheet(context);
                    },
                    ),
               buildForSearch(isSearch),
               IconButton(
                   icon: Icon(Icons.search,size: 30,color: Colors.white,),
                   onPressed: () {
                     setState(() {
                       isSearch=!isSearch;
                     });
                   }
                   ),
              ],
            ),
          ),
           SizedBox(height: 15,),
           SingleChildScrollView(
             scrollDirection: Axis.horizontal,
             child: Padding(
               padding: const EdgeInsets.only(left: 10,right: 10),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   makeCircRectContainer(1,'Primary', color1,Icons.archive),
                   SizedBox(width: 15,),
                   makeCircRectContainer(2,'Social', color2,Icons.people),
                   SizedBox(width: 15,),
                   makeCircRectContainer(3,'Promotions', color3,Icons.more)
                 ],
               ),
             ),
           ),
           SizedBox(height: 40,),
           Container(
             width: double.infinity,
             height: MediaQuery.of(context).size.height-200,
             decoration: BoxDecoration(
               color: Colors.white,
                 borderRadius: BorderRadius.only(
                   topLeft: Radius.circular(25),
                   topRight:  Radius.circular(25),
                  ),
                 shape: BoxShape.rectangle
             ),
             child: page,
           )
         ],
     ),
      ),
      floatingActionButton: CustomFloatingActionBotton()
    );
  }
}

