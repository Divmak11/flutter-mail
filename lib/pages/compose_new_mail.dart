import 'package:flutter/material.dart';
class ComposeMail extends StatefulWidget {
  @override
  _ComposeMailState createState() => _ComposeMailState();
}

class _ComposeMailState extends State<ComposeMail> {

  Widget buildMailTypeCard() {
    return Container(
      height: 300,
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
                child:  Text("Type Something Here",
                    style: TextStyle(fontSize: 18,color: Colors.grey))
                ,),
              Positioned(
                left: 5,
                bottom: 5,
                child:  Container(
                    width: 150,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black45,width: 0.5)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Icon(Icons.touch_app,color: Colors.blue,size: 22,),
                        Text(
                          'Requirements for..',
                          overflow: TextOverflow.ellipsis,)
                      ],
                    )
                )
                ,),
              Positioned(
                right: 5,
                bottom: 5,
                child:  Container(
                  height: 50,
                  width: 120,
                  child: Card(
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.attachment,color: Colors.grey,),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.send,color: Colors.grey,),
                        ),
                      ],
                    ),
                  ),
                )
                ,)
            ],
          ),
        ),
      ),
    );
  }

  Widget buildRow() {

    return Row(
      children: <Widget>[
        const Text('To',style: TextStyle(color: Colors.black54,fontSize: 20),),
        Spacer(flex: 1,),
        Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(199,22,16,1),
            borderRadius: BorderRadius.circular(10)
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: Text('Divyam Makar',
                style: TextStyle(color: Colors.white),),
            ),
          ),
        ),
        Spacer(flex: 4,),
        IconButton(
            icon: Icon(Icons.expand_more,color: Colors.black54,),
            onPressed: () {})
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(right: 10,left: 15),
        child: ListView(
          children: <Widget>[
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
               Text('Compose Mail',style: TextStyle(color: Colors.black54,fontSize: 25)),
               IconButton(icon: Icon(Icons.clear,color: Colors.black54,size: 30,), onPressed: () {
                 Navigator.of(context).pop();
               })
             ],
           ),
            SizedBox(height: 30,),
            buildRow(),
            SizedBox(height: 10,),
            Row(
              children: <Widget>[
                Text('Subject',style: TextStyle(color: Colors.black54,fontSize: 20),)
              ],
            ),
            SizedBox(height: 20,),
            buildMailTypeCard(),
          ],
        ),
      ),
    );
  }
}
